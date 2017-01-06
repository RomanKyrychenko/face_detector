#new algorythm for twitter analyse
library("twitteR")
library("ROAuth")
library(httr)

CUSTOMER_KEY='FZQtyEPqNtKORjFNkuFYoqz8c'
CUSTOMER_SECRET='aQp7R0ssflOxt0SYuPtPbLFYmReB9AiW8bo8II3v6MYEThhm43'
ACCESS_TOKEN='316537972-jt3gaRWpWqNXvZZdAOomWLHNygPXoV60GXsQbK1v'
ACCESS_secret='avsz6vGEn2yOcwPzOaptmamiDNWA3f0AJjc7ZCjl47NZo'

setup_twitter_oauth(CUSTOMER_KEY, CUSTOMER_SECRET, ACCESS_TOKEN, ACCESS_secret)

Sys.setlocale(,"ru_RU")

tweets = searchTwitter("", n=50,
                       since="2015-01-01",
                       geocode="48.167,38.694,100km",
                       retryOnRateLimit=2000)
a.df = do.call("rbind",lapply(tweets,as.data.frame))

ordlo.user <- unique(ordlo.df$screenName)

tweets = searchTwitter(" ", n=50000,
                       since="2015-01-01",
                       geocode="48.44,33.8304,180km",
                       retryOnRateLimit=2000)
ukr.df = do.call("rbind",lapply(tweets,as.data.frame))

0023, 

tweets = searchTwitter(" ", n=50000,
                       since="2015-01-01",
                       geocode="45.118,34.249,180km",
                       retryOnRateLimit=2000)
krym.df = do.call("rbind",lapply(tweets,as.data.frame))

krym.user <- unique(krym.df$screenName)



user1.krm

user1.krm <- getUser('lsv3069')
u1k <- c(user1.krm@.xData$screenName, user1.krm@.xData$description, user1.krm@.xData$location, user1.krm@.xData$created, user1.krm@.xData$statusesCount, user1.krm@.xData$followersCount, user1.krm@.xData$favoritesCount, user1.krm@.xData$friendsCount, user1.krm@.xData$name, user1.krm@.xData$id)




user1.krm <- getUser(krym.user[11])
u4k <- c(user1.krm@.xData$screenName, user1.krm@.xData$description, user1.krm@.xData$location, as.character(user1.krm@.xData$created), user1.krm@.xData$statusesCount, user1.krm@.xData$followersCount, user1.krm@.xData$favoritesCount, user1.krm@.xData$friendsCount, user1.krm@.xData$name, user1.krm@.xData$id)
krym.user.df$u11k <- u4k

u1timeLine <- userTimeline(krym.user[11])
u11kTL = do.call("rbind",lapply(u1timeLine,as.data.frame))

donetsk.users.l.df <- Reduce(function(x, y) merge(x, y, all=TRUE), list(
u100k,
u101k,
u109k,
u113k,
u116k,
u123k,
u138k,
u140k,
u141k,
u142k,
u145k,
u14k,
u150k,
u152k,
u153k,
u155k,
u159k,
u15k,
u163k,
u165k,
u167k,
u168k,
u16k,
u172k,
u175k,
u176k,
u181k,
u182k,
u185k,
u187k,
u188k,
u18k,
u190k,
u195k,
u196k,
u197k,
u199k,
u19k,
u200k,
u201k,
u202k,
u204k,
u205k,
u206k,
u207k,
u209k,
u219k,
u21k,
u232k,
u237k,
u241k,
u242k,
u244k,
u24k,
u25k,
u27k,
u28k,
u29k,
u2k,
u30k,
u31k,
u36k,
u37k,
u3k,
u40k,
u41k,
u44k,
u45k,
u46k,
u47k,
u48k,
u49k,
u50k,
u51k,
u55k,
u56k,
u57k,
u59k,
u5k,
u60k,
u65k,
u66k,
u68k,
u71k,
u72k,
u74k,
u76k,
u78k,
u79k,
u85k,
u8k,
u91k,
u92k,
u95k,
u9k))

befor.revolution.df <- Reduce(function(x, y) merge(x, y, all=TRUE), list(
  o.u208.fri,
  o.u198.fri,
  o.u243.fri,
  o.u20.fri,
  o.u34.fri,
  o.u183.fri,
  o.u87.fri,
  o.u139.fri,
  o.u151.fri,
  o.u240.fri,
  o.u161.fri,
  o.u32.fri,
  o.u213.fri,
  o.u12.fri,
  o.u11.fri,
  o.u75.fri,
  o.u160.fri,
  o.u27.fri,
  o.u9.fri,
  o.u57.fri,
  o.u91.fri,
  o.u159.fri,
  o.u199.fri,
  o.u60.fri,
  o.u45.fri,
  o.u51.fri,
  o.u49.fri,
  o.u15.fri,
  o.u195.fri,
  o.u72.fri,
  o.u41.fri,
  o.u65.fri,
  o.u176.fri,
  o.u16.fri,
  o.u78.fri,
  o.u167.fri,
  o.u172.fri,
  o.u150.fri,
  o.u181.fri,
  o.u74.fri,
  o.u2.fri,
  o.u21.fri,
  o.u155.fri,
  o.u145.fri,
  o.u142.fri,
  o.u196.fri,
  o.u219.fri,
  o.u187.fri,
  o.u206.fri,
  o.u165.fri,
  o.u48.fri,
  o.u237.fri,
  o.u140.fri,
  o.u31.fri,
  o.u46.fri,
  o.u92.fri,
  o.u18.fri,
  o.u47.fri,
  o.u36.fri,
  o.u182.fri,
  o.u100.fri,
  o.u55.fri,
  o.u50.fri,
  o.u44.fri,
  o.u153.fri,
  o.u202.fri,
  o.u232.fri))

bevor.maidan <- subset(befor.revolution.df,befor.revolution.df$created<"2013-11-21 10:43:46")
bevor.maidan.df <- subset(bevor.maidan, bevor.maidan$location!="")
bevor.maidan.aggr <- table(bevor.maidan.df$location)
bevor.maidan.aggr <- data.frame(bevor.maidan.aggr)

getting.user <- function(x) {
  x <- getUser(x);
  x <- c(x@.xData$screenName, x@.xData$description, x@.xData$location, as.character(x@.xData$created), x@.xData$statusesCount, x@.xData$followersCount, x@.xData$favoritesCount, x@.xData$friendsCount, x@.xData$name, x@.xData$id);
  x
}

u <- lapply(base.krym.users[1:5], getting.user)
u.df = do.call("rbind",lapply(u,as.data.frame))
u.df <- data.frame(matrix(unlist(u), ncol=10, byrow=T))

u <- lapply(base.ukranian.users[26:50], getting.user)
u.26_50df <- data.frame(matrix(unlist(u), ncol=10, byrow=T))

u <- lapply(base.ukranian.users[676:700], getting.user)
u.676_700df <- data.frame(matrix(unlist(u), ncol=10, byrow=T))

dn.df <- list(u.676_700df, u.1_25df, u.101_125df, u.126_150df, u.151_175df, u.176_200df, u.201_225df,
              u.226_250df, u.251_275df, u.276_300df, u.301_325df, u.326_350df, u.351_375df, u.376_400df,
              u.401_425df, u.426_450df, u.451_475df, u.476_500df, u.501_525df, u.51_75df, u.526_550df,
              u.551_575df, u.626_675df)

dnipro.users.df <- Reduce(function(x, y) merge(x, y, all=TRUE), dn.df)
Dnipo.df <- subset(dnipro.users.df, dnipro.users.df$X3!="")



folfriend <- function(x, retryOnRateLimit = 7) {
  library(gdata)
  y <- getUser(x)
  z <- y$getFollowers()
  q <- y$getFriends()
  followers <- do.call("rbind",lapply(z,as.data.frame))
  friends <- do.call("rbind",lapply(q,as.data.frame))
  x <- combine(followers,friends)
}

library(gtools)
control197_216<-do.call("smartbind", lapply(list.names[197:216], folfriend))

rina <- getUser("rinacem")
rina.fol <- rina$getFollowers(retryOnRateLimit = 120)
rina.fri <- rina$getFriends(retryOnRateLimit = 120)
rinacem.followers <- do.call("rbind",lapply(rina.fol,as.data.frame))
rinacem.friends <- do.call("rbind",lapply(rina.fri,as.data.frame))

base.ukr <- read.csv("base.ukr.csv", sep = ",")
list.names <- base.ukr$screenname

controll.df <- Reduce(function(x, y) merge(x, y, all=TRUE), list(
  control16,
  control17,
  control6_10,
  control11_15,
  control19_25,
  control26_30,
  control31_35,
  control36_40,
  control41_45,
  control51_55,
  control56_60,
  control66_70,
  control71_75,
  control76_80,
  control86_90,
  control95_100,
  control101_105,
  control106_110,
  control111_115,
  control116_120,
  control121_126,
  control127_130,
  control131_135,
  control136_140,
  control141_145,
  control146_150,
  control151_155,
  control156_160,
  control161_165,
  control166_170,
  control176_180,
  control197_200,
  control201_205,
  control206_210,
  control211_216,
  control217_222,
  control223_228,
  control229_234,
  control235_240,
  control241_246,
  control247_252,
  control253_258))



install.packages("R.utils")

for(i in 2:15) {
  print (i)
  evalWithTimeout(Sys.sleep(10), timeout = 4.1)
}

limit.info <- data.frame(getCurRateLimitInfo(resources=resource_families))



all.users <- lookupUsers(list.names, retryOnRateLimit = 120)

fol <- function(x) {
  fol <- x$getFollowers()
}

nn.fol <- lapply(nn, fol)
av.followers <- do.call("rbind",lapply(av.fol$PostGraphics,as.data.frame))

folcon <- function(x) {
  for (i in x) {
    i <- do.call("rbind",lapply(i,as.data.frame))
  }
}

nn <- lookupUsers(c("rinacem", "KSemenchenko"))

folov<- function(x, retryOnRateLimit = 7) {
  y <- getUser(x)
  z <- y$getFollowers()
  followers <- do.call("rbind",lapply(z,as.data.frame))
}

NV <- folov("tweetsNV")
day <- folov("TheDayNewspaper")
korresp <- folov("korrnews")





lookupUsers