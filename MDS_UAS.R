message('Loading Packages')
library(rvest)
library(tidyverse)
library(mongolite)

message('Scraping Data')
url <- "https://www.suara.com/news"
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

