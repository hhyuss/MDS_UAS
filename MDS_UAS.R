message('Loading Packages')
library(rvest)
library(tidyverse)
library(mongolite)
library(httr)

message('Scraping Data')
url <- "https://www.viva.co.id/search?q=pilkada%20jakarta/"
page <- read_html(url)

# Extract data using XPath selectors
judul <- page %>% html_nodes(xpath = '//a[@class="article-list-title"]') %>% html_text()
links <- page %>% html_nodes(xpath = '//a[@class="article-list-title"]') %>% html_attr("href")
date <- page %>% html_nodes(xpath = '//div[@class="article-list-date content_center"]') %>% html_text()

data <- data.frame(
  time_scraped = Sys.time(),
  judul = head (judul,5),
links = head(links,5),
date = head(date,5),
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
