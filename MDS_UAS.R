message('Loading Packages')
library(rvest)
library(tidyverse)
library(mongolite)
library(httr)

message('Scraping Data')
url <- "https://www.viva.co.id/"
page <- read_html(url)

# Extract data using XPath selectors
judul <- page %>% html_nodes(xpath = '//*[@id="load-content"]/div[1]/div[2]/span/a[2]') %>% html_text()
kategori <- page %>% html_nodes(xpath = '//*[@id="load-content"]/div[1]/div[2]/span/a[3]') %>% html_text()
date <- page %>% html_nodes(xpath = '//*[@id="load-content"]/div[1]/div[2]/span/div') %>% html_text()
links <- page %>% html_nodes(xpath = '//*[@id="load-content"]/div[1]/div[2]/span/a[2]') %>% html_attr("href")


data <- data.frame(
  time_scraped = Sys.time(),
  judul = head(judul, 10),
  kategori = head(kategori, 10),
  date = head(date,5),
  links = head (links,5),
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

