library(tidyverse)
library(curl)

v01dr <- read.csv('~/DSP539 final tyler/V01/CenterdR.csv')
v01cam <- read.csv('~/DSP539 final tyler/V01/camdata.txt')
test <- str_split(v01cam[15,1],' : ',simplify = TRUE) 
v01cam <- as.numeric(test[1,2])
v01dr=v01dr[-c(1),]
v01dr$time <- as.numeric(v01dr$P0)/v01cam
v01dr$vel <- 0
v01dr$vel[2:1001] <- diff(as.numeric(v01dr$X))/diff(as.numeric(v01dr$time))

v02dr <- read.csv('~/DSP539 final tyler/V02/CenterdR.csv')
v02cam <- read.csv('~/DSP539 final tyler/V02/camdata.txt')
test <- str_split(v02cam[15,1],' : ',simplify = TRUE)
v02cam <- as.numeric(test[1,2])
v02dr=v02dr[-c(1),]
v02dr$time <- as.numeric(v02dr$Average)/v02cam
v02dr$vel <- 0
v02dr$vel[2:3501] <- diff(as.numeric(v02dr$P0))/diff(as.numeric(v02dr$time))

v03dr <- read.csv('~/DSP539 final tyler/V03/CenterdR.csv')
v03cam <- read.csv('~/DSP539 final tyler/V03/camdata.txt')
test <- str_split(v03cam[15,1],' : ',simplify = TRUE) 
v03cam <- as.numeric(test[1,2])
v03dr=v03dr[-c(1),]
v03dr$time <- as.numeric(v03dr$P0)/v03cam
v03dr$vel <- 0
v03dr$vel[2:1501] <- diff(as.numeric(v03dr$X))/diff(as.numeric(v03dr$time))
#
d901dr <- read.csv('~/DSP539 final tyler/9d01/CenterdR.csv')
d901cam <- read.csv('~/DSP539 final tyler/9d01/camdata.txt')
test <- str_split(d901cam[15,1],' : ',simplify = TRUE) 
d901cam <- as.numeric(test[1,2])
d901dr$time <- as.numeric(d901dr$P0)/d901cam
d901dr=d901dr[-c(1),]
d901dr$vel <- 0
d901dr$vel[2:500] <- diff(as.numeric(d901dr$X))/diff(as.numeric(d901dr$time))

d903dr <- read.csv('~/DSP539 final tyler/9d03/CenterdR.csv')
d903cam <- read.csv('~/DSP539 final tyler/9d03/camdata.txt')
test <- str_split(d903cam[15,1],' : ',simplify = TRUE) 
d903cam <- as.numeric(test[1,2])
d903dr$time <- as.numeric(d903dr$P0)/d903cam
d903dr=d903dr[-c(1),]
d903dr$vel <- 0
d903dr$vel[2:500] <- diff(as.numeric(d903dr$X))/diff(as.numeric(d903dr$time))
#
d2401dr <- read.csv('~/DSP539 final tyler/24d01/CenterdR.csv')
d2401cam <- read.csv('~/DSP539 final tyler/24d01/camdata.txt')
test <- str_split(d2401cam[15,1],' : ',simplify = TRUE) 
d2401cam <- as.numeric(test[1,2])
d2401dr$time <- as.numeric(d2401dr$P0)/d2401cam
d2401dr=d2401dr[-c(1),]
d2401dr$vel <- 0
d2401dr$vel[2:1001] <- diff(as.numeric(d2401dr$X))/diff(as.numeric(d2401dr$time))

d2402dr <- read.csv('~/DSP539 final tyler/24d02/CenterdR.csv')
d2402cam <- read.csv('~/DSP539 final tyler/24d02/camdata.txt')
test <- str_split(d2402cam[15,1],' : ',simplify = TRUE) 
d2402cam <- as.numeric(test[1,2])
d2402dr$time <- as.numeric(d2402dr$Average)/d2402cam
d2402dr=d2402dr[-c(1),]
d2402dr$vel <- 0
d2402dr$vel[2:1501] <- diff(as.numeric(d2402dr$P0))/diff(as.numeric(d2402dr$time))

d2403dr <- read.csv('~/DSP539 final tyler/24d03/CenterdR.csv')
d2403cam <- read.csv('~/DSP539 final tyler/24d03/camdata.txt')
test <- str_split(d2403cam[15,1],' : ',simplify = TRUE) 
d2403cam <- as.numeric(test[1,2])
d2403dr$time <- as.numeric(d2403dr$P0)/d2403cam
d2403dr=d2403dr[-c(1),]
d2403dr$vel <- 0
d2403dr$vel[2:1001] <- diff(as.numeric(d2403dr$X))/diff(as.numeric(d2403dr$time))


attach(v01dr)
plot(time,X,xlab='time (s)',ylab='displacement (mm)',main='V01 displacement')
plot(time,vel,xlab='time (s)',ylab='velocity (mm/s)',main='V01 velocity')
attach(v02dr)
plot(time,P0,xlab='time (s)',ylab='displacement (mm)',main='V02 displacement')
plot(time,vel,xlab='time (s)',ylab='velocity (mm/s)',main='V02 velocity')
attach(v03dr)
plot(time,X,xlab='time (s)',ylab='displacement (mm)',main='V03 displacement')
plot(time,vel,xlab='time (s)',ylab='velocity (mm/s)',main='V03 velocity')

attach(d901dr)
plot(time,X,xlab='time (s)',ylab='displacement (mm)',main='9d01 displacement')
plot(time,vel,xlab='time (s)',ylab='velocity (mm/s)',main='9d01 velocity')
attach(d903dr)
plot(time,X,xlab='time (s)',ylab='displacement (mm)',main='9d03 displacement')
plot(time,vel,xlab='time (s)',ylab='velocity (mm/s)',main='9d03 velocity')

attach(d2401dr)
plot(time,X,xlab='time (s)',ylab='displacement (mm)',main='24d01 displacement')
plot(time,vel,xlab='time (s)',ylab='velocity (mm/s)',main='24d01 velocity')
attach(d2402dr)
plot(time,P0,xlab='time (s)',ylab='displacement (mm)',main='24d02 displacement')
plot(time,vel,xlab='time (s)',ylab='velocity (mm/s)',main='24d02 velocity')
attach(d2403dr)
plot(time,X,xlab='time (s)',ylab='displacement (mm)',main='24d03 displacement')
plot(time,vel,xlab='time (s)',ylab='velocity (mm/s)',main='24d03 velocity')
