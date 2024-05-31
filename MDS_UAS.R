message('Loading Packages')
library(rvest)
library(tidyverse)
library(mongolite)
library(httr)

message('Scraping Data')
url <- "https://www.viva.co.id/"
page <- read_html(url)

# Extract data using XPath selectors
judul <- page %>% html_nodes(xpath = '//a[@class="article-list-title"]') %>% html_text()
kategori <- page %>% html_nodes(xpath = '//a[@class="article-list-cate content_center"]') %>% html_text()
date <- page %>% html_nodes(xpath = '//div[@class="article-list-date content_center"]') %>% html_text()
links <- page %>% html_nodes(xpath = '//a[@class="article-list-title"]') %>% html_attr("href")

# Check lengths
length(judul)
length(kategori)
length(date)
length(links)

# Find the minimum length
min_length <- min(length(judul), length(kategori), length(date), length(links))

# Trim all vectors to the same length
judul <- judul[1:min_length]
kategori <- kategori[1:min_length]
date <- date[1:min_length]
links <- links[1:min_length]

data <- data.frame(
  time_scraped = Sys.time(),
  judul = judul,
  kategori = kategori, 
  date = date,
  links = links,
  stringsAsFactors = FALSE
)

# MONGODB
message('Input Data to MongoDB Atlas')
atlas_conn <- mongo(
  collection = Sys.getenv("ATLAS_COLLECTION"),
  db         = Sys.getenv("ATLAS_DB"),
  url        = Sys.getenv("ATLAS_URL")
)

atlas_conn$insert(data)
rm(atlas_conn)

