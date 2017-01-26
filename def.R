require(XML)
data <- xmlParse("http://data.gov.ua/view-dataset/dataset-file/6662")
xml_data <- xmlToList(data)

install.packages("devtools")
require(devtools)
install_url("http://www.omegahat.org/Rstem/Rstem_0.4-1.tar.gz")
install_url("http://cran.r-project.org/src/contrib/Archive/sentiment/sentiment_0.1.tar.gz")
install_url("http://cran.r-project.org/src/contrib/Archive/sentiment/sentiment_0.2.tar.gz")

library("plyr")
library("ggplot2")
library("wordcloud")
library("RColorBrewer")
library("tm")
library("SnowballC")

devtools::install_github("csgillespie/efficientR")
bookdown::render_book("index.Rmd", bookdown::html_chapters())

library(DiagrammeR)

mermaid("gantt
        Section Initiation
        ?????????????????? ????????           :a1, 852, 27y
        ???????????? ????????????    :a2, 879  , 33y
        ???????????? ??????????    :a3, 912, 33y
        ???????????? ??????????    :a4, 945, 27y    
        ???????????? ????????????????????    :a5, 972, 1y")

pack <- c("assertive.reflection",
"benchmarkme",
"bookdown",
"cranlogs",
"data.table",
"devtools",
"DiagrammeR",
"dplyr",
"drat",
"efficient",
"formatR",
"fortunes",
"ggplot2",
"ggplot2movies",
"knitr",
"lubridate",
"microbenchmark",
"pryr",
"readr",
"tidyr")

library(Hmisc)
mydataframe <- spss.get("Data_OMN_dec_2015_open_UKR_unicode.sav", use.value.labels=TRUE)

library(psych)


install.packages('timeline', repos='http://cran.r-project.org')
library(timeline)

library("RSelenium")
startServer()
mybrowser <- remoteDriver()
mybrowser$open()
mybrowser$navigate("http://www.weather.gov")
mybrowser$findElement(using = 'css selector', "#inputstring")
wxbox <- mybrowser$findElement(using = 'css selector', "#inputstring")
wxbox$sendKeysToElement(list("01701"))
wxbutton <- mybrowser$findElement(using = 'css selector', "#btnSearch")
wxbutton$clickElement()
mybrowser$goBack()
wxbox <- mybrowser$findElement(using = 'css selector', "#inputstring")
wxbox$sendKeysToElement(list("01701", "\uE007"))


stri_trans_general("Пётр Ильич Чайковский", "cyrillic-latin; nfd; [:nonspacing mark:] remove; nfc")
nts
