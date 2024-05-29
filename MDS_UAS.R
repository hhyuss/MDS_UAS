message('Loading Packages')
library(rvest)
library(tidyverse)
library(mongolite)

message('Scraping Data')
url <- "https://www.suara.com/news/news-category/nasional#"
page <- read_html(url)


titles <- page %>% html_nodes(xpath = '//div[@class="text-list-item-y"]/a') %>% html_text()

dates <- page %>% html_nodes(xpath = '//div[@class="date-list-item-y"]') %>% html_text()

links <- page %>% html_nodes(xpath = '//div[@class="text-list-item-y"]/a') %>% html_attr("href")



data <- data.frame(
  time_scraped = Sys.time(),
  titles = titles,
  dates = dates,
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
