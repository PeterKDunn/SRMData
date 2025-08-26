### code to prepare `DATASET` data set goes here
### See: https://r-pkgs.org/data.html

library(devtools)
library(usethis) # To save things and so on
library(plyr)
library(dplyr) # For selecting variables

###########################################################################
#  Save all the csv files and RData files
#  - Load names of data files
#  - Process **IF NEEDED**
#  - Save as .rda
#  - Save as .csv in the Textbook Data/ directory
###########################################################################



SixMWT <- read.csv(file.path("data-raw","6MWT.csv"))
SixMWT <- data.frame( Dist20 = SixMWT$Distance20,
                      Dist30 = SixMWT$Distance30,
                      Age = SixMWT$Age)
usethis::use_data(SixMWT, 
                  overwrite = TRUE)
write.csv(SixMWT, 
          file = file.path("..", "SRM-Textbook", "Data", "SixMWT.csv"), 
          row.names = FALSE)


##############################
AISsub <- read.csv(file.path("data-raw","AIS.csv"))
AISsub <- data.frame( Sex   = AISsub$Sex,
                      SSF   = AISsub$SSF,
                      PBF   = AISsub$PBF,
                      Sport = AISsub$Sport,
                      Wt    = AISsub$Wt,
                      Ht    = AISsub$Ht)
usethis::use_data(AISsub, 
                  overwrite = TRUE)
write.csv(AISsub, 
          file = file.path("..", "SRM-Textbook", "Data", "AISsub.csv"), 
          row.names = FALSE)

##############################
Anorexia <- read.csv(file.path("data-raw","Anorexia.csv"))
usethis::use_data(Anorexia, 
                  overwrite = TRUE)
write.csv(Anorexia, 
          file = file.path("..", "SRM-Textbook", "Data", "Anorexia.csv"),
          row.names = FALSE)


##############################
B12Diet <- read.csv(file.path("data-raw","B12Long.csv"))
usethis::use_data(B12Diet, 
                  overwrite = TRUE)
write.csv(B12Diet, 
          file = file.path("..", "SRM-Textbook", "Data", "B12Long.csv"),
          row.names = FALSE)


##############################
BabyBoom <- read.csv(file.path("data-raw","BabyBoom.csv"))
usethis::use_data(BabyBoom, 
                  overwrite = TRUE)
write.csv(BabyBoom, 
          file = file.path("..", "SRM-Textbook", "Data", "BabyBoom.csv"),
          row.names = FALSE)


##############################
Battery <- read.csv(file.path("data-raw","Battery.csv"))
usethis::use_data(Battery, 
                  overwrite = TRUE)
write.csv(Battery, 
          file = file.path("..", "SRM-Textbook", "Data", "Battery.csv"),
          row.names = FALSE)


##############################
Bitumen <- read.csv(file.path("data-raw","Bitumen.csv"))
usethis::use_data(Bitumen, 
                  overwrite = TRUE)
write.csv(Bitumen, 
          file = file.path("..", "SRM-Textbook", "Data", "Bitumen.csv"),
          row.names = FALSE)



##############################
LHconc <- read.csv(file.path("data-raw","LHconc.csv"))
usethis::use_data(LHconc, 
                  overwrite = TRUE)
write.csv(LHconc, 
          file = file.path("..", "SRM-Textbook", "Data", "LHconc.csv"),
          row.names = FALSE)



##############################
library("foreign")

BMI <- read.spss(file.path("data-raw", "ARCHIVEDDATA.sav"),
                 to.data.frame = TRUE)    # From publisher website
levels(BMI$edu) <- c("primary",
                     "secondary",
                     "postLeaving",
                     "complete3rd")
levels(BMI$smoke) <- c("daily",
                       "occasionally",
                       "not at all")
levels(BMI$diet) <- c("yes",
                      "no",
                      "dont know")
levels(BMI$bmi_perception) <- c("normalweight",
                                "overweight",
                                "obese")

usethis::use_data(BMI, 
                  overwrite = TRUE)
write.csv(BMI, 
          file = file.path("..", "SRM-Textbook", "Data", "BMI.csv"),
          row.names = FALSE)


##############################
BodyTemp <- read.csv(file.path("data-raw","BodyTemp.csv"))
usethis::use_data(BodyTemp, 
                  overwrite = TRUE)
write.csv(BodyTemp, 
          file = file.path("..", "SRM-Textbook", "Data", "BodyTemp.csv"),
          row.names = FALSE)


##############################
BoneQuality <- read.csv(file.path("data-raw","BoneQuality.csv"))

BoneQuality <- dplyr::select(BoneQuality,
                             Sex = Sex.M.1..W.2.,
                             Age = Age.years.,
                             Height = Height.cm.,
                             Weight = Weight.kg.,
                             LumbarBMD = L.spine.BMD.g.cm2.,
                             HipBMD = Total.hip.BMD.g.cm2.,
                             NeckBMD = Femur.neck.BMD.g.cm2.)
BoneQuality$Sex <- factor(BoneQuality$Sex,
                          levels = 1:2,
                          labels = c("Male",
                                     "Female"))

usethis::use_data(BoneQuality, 
                  overwrite = TRUE)
write.csv(BoneQuality, 
          file = file.path("..", "SRM-Textbook", "Data", "BoneQuality.csv"),
          row.names = FALSE)


##############################
### Exception: Processing needed
Borers <- read.csv(file.path("data-raw","borers.csv"))
Borers <- dplyr::select(Borers,
                        Hybrids = Hybrids,
                        Insecticide = Insecticide,
                        Height = "Plant.height..cm.",
                        Tunnels = "Tunnels.length..cm.",
                        PanicleLength = "Panicle.length..cm.",
                        PanicleWeight = "panicle.weight..g.",
                        Infestation = Infestation.intensity,
                        Yield = "Yield..kg.ha.1.")
usethis::use_data(Borers,
                  overwrite = TRUE)
write.csv(Borers, 
          file = file.path("..", "SRM-Textbook", "Data", "Borers.csv"),
          row.names = FALSE)


##############################
Burros <- read.csv(file.path("data-raw","Burros.csv"))
usethis::use_data(Burros, 
                  overwrite = TRUE)
write.csv(Burros, 
          file = file.path("..", "SRM-Textbook", "Data", "Burros.csv"),
          row.names = FALSE)


##############################
Captopril <- read.csv(file.path("data-raw","Captopril.csv"))
usethis::use_data(Captopril, 
                  overwrite = TRUE)
write.csv(Captopril, 
          file = file.path("..", "SRM-Textbook", "Data", "Captopril.csv"),
          row.names = FALSE)


##############################
CarCrashes <- read.csv(file.path("data-raw","CarCrashes.csv"))
usethis::use_data(CarCrashes, 
                  overwrite = TRUE)
write.csv(CarCrashes, 
          file = file.path("..", "SRM-Textbook", "Data", "CarCrashes.csv"),
          row.names = FALSE)


##############################
### Exception: Processing needed
CherryRipe <- read.csv(file.path("data-raw","CherryRipe.csv"))

CherryRipe <- CherryRipe[, c(3:5, 7)]

usethis::use_data(CherryRipe, 
                  overwrite = TRUE)
write.csv(CherryRipe, 
          file = file.path("..", "SRM-Textbook", "Data", "CherryRipe.csv"), 
          row.names = FALSE)
##############################


##############################
Corollas <- read.csv(file.path("data-raw","Corollas.csv"))

usethis::use_data(Corollas, 
                  overwrite = TRUE)
write.csv(Corollas, 
          file = file.path("..", "SRM-Textbook", "Data", "Corollas.csv"), 
          row.names = FALSE)



##############################
CrabShells3 <- read.csv(file.path("data-raw","CrabShells.csv"))

# 3 x 3
usethis::use_data(CrabShells3, 
                  overwrite = TRUE)
write.csv(CrabShells3, 
          file = file.path("..", "SRM-Textbook", "Data", "CrabShells3.csv"), 
          row.names = FALSE)

# 2 x 2
CrabShells2 <- CrabShells3
CrabShells2$ShellColumn[ CrabShells2$ShellColumn == 3] <- 1
CrabShells2$ShellRow[ CrabShells2$ShellRow == 3] <- 1
CrabShells2 <- as.data.frame(xtabs( Counts ~ ShellColumn + ShellRow, 
                           data = CrabShells2) )
CrabShells2 <- dplyr::rename(CrabShells2,
                             Counts = Freq)

usethis::use_data(CrabShells2, 
                  overwrite = TRUE)
write.csv(CrabShells2, 
          file = file.path("..", "SRM-Textbook", "Data", "CrabShells2.csv"), 
          row.names = FALSE)


##############################
Cyclones <- read.csv(file.path("data-raw","Cyclones.csv"))
usethis::use_data(Cyclones, 
                  overwrite = TRUE)
write.csv(Cyclones, 
          file = file.path("..", "SRM-Textbook", "Data", "Cyclones.csv"),
          row.names = FALSE)


##############################
Deceleration <- read.csv(file.path("data-raw","Deceleration.csv"))
usethis::use_data(Deceleration, 
                  overwrite = TRUE)
write.csv(Deceleration, 
          file = file.path("..", "SRM-Textbook", "Data", "Deceleration.csv"), 
          row.names = FALSE)


##############################
DanishLC <- read.csv(file.path("data-raw","DanishLC.csv"))
usethis::use_data(DanishLC, 
                  overwrite = TRUE)
write.csv(DanishLC, 
          file = file.path("..", "SRM-Textbook", "Data", "DanishLC.csv"), 
          row.names = FALSE)


##############################
Dental <- read.csv(file.path("data-raw","Dental.csv"))
usethis::use_data(Dental, 
                  overwrite = TRUE)
write.csv(Dental, 
          file = file.path("..", "SRM-Textbook", "Data", "Dental.csv"), 
          row.names = FALSE)


##############################
### Exception: Processing needed
Diabetes <- read.csv(file.path("data-raw","Diabetes.csv"))
Diabetes <- dplyr::select(Diabetes,
                          bp.1s,
                          bp.1d,
                          bp.2s,
                          bp.2d)
Diabetes <- dplyr::rename(Diabetes,
                          SBPfirst = bp.1s,
                          DBPfirst = bp.1d,
                          SBPsecond = bp.2s,
                          DBPsecond = bp.2d)
usethis::use_data(Diabetes, 
                  overwrite = TRUE)
write.csv(Diabetes, 
          file = file.path("..", "SRM-Textbook", "Data", "Diabetes.csv"),
          row.names = FALSE)



##############################
### Exception: Processing needed
Dogs <- read.csv(file.path("data-raw","Dogs.csv"))
Dogs <- select(Dogs,
               BL,
               BH,
               Chest,
               Waist)
usethis::use_data(Dogs, 
                  overwrite = TRUE)
write.csv(Dogs, 
          file = file.path("..", "SRM-Textbook", "Data", "Dogs.csv"),
          row.names = FALSE)





##############################
### Processing needed
### Some code based on code from:
# https://datadryad.org/stash/dataset/doi:10.5061/dryad.wwpzgmsn6#citations
dat <- read.csv(file.path("data-raw", "AdamsDataPlus.csv"),
                na.strings = "#N/A")
dat <- as.data.frame(dat)
dat <- dat[, c(1:5)]
nDeaths <- array( 100, # DEFAULT to 100, greater than 50 so IS INCLUDED. 
                  dim = length(dat$Lifespan) )
nDeaths[ dat$Lifespan < 5.9 ] <- 0 # Nothing in Fig 2A is under 6
nDeaths[ dat$Lifespan > 14 & dat$Weight > 10] <- 0 # Nothing in Fig 2A is here
nDeaths[ dat$Lifespan < 10 & dat$Weight < 20] <- 0 # Nothing in Fig 2A is here
nDeaths[ dat$Lifespan > 12.5 & dat$Weight > 31] <- 0 # Nothing in Fig 2A here

removeManually <- c(162, 177, 263, 4, 108, 53,
                    203, 141, 259, 281,
                    131, 83, 76, 165, 287,
                    26, 112, 120, 
                    123, 257, 117,
                    1, 10, 41, 48, 78, 106, 134, 144, 146, 165, 187, 200, 203, 
                        207, 227, 242, 268, 287,
                    122,
                    20, 88, 5,
                    116,
                    160, 164, 52,
                    93, 198,
                    272, 274, 110, 60, 201, 25, 213,
                    32, 232,
                    166, 147, 22, 188, 276, 279, 180) 
dat <- dat[ -removeManually, ]
nDeaths <- nDeaths[ -removeManually]
dat <- subset(dat, nDeaths > 50)

#
# PLOT looks as close as I can can get to that shown in the paper
#plot( Lifespan ~ Weight, 
#      data = dat,
#      ylim = c(4, 16),
#      xlim = c(0, 80),
#      las = 1)
#abline(12.99, -0.08842)
#grid()
DogsLife <- dat
DogsLife <- DogsLife[
  complete.cases(DogsLife[, c(1, 2, 5)]), ]

usethis::use_data(DogsLife, 
                  overwrite = TRUE)
write.csv(DogsLife, 
          file = file.path("..", "SRM-Textbook", "Data", "DogsLife.csv"), 
          row.names=FALSE)


##############################
### Processing needed
DogWalks <- read.csv(file.path("data-raw","DogWalks.csv"))
usethis::use_data(DogWalks, 
                  overwrite = TRUE)
write.csv(DogWalks, 
          file = file.path("..", "SRM-Textbook", "Data", "DogWalks.csv"), 
          row.names=FALSE)




##############################
### Processing needed
EarInfection <- read.csv(file.path("data-raw","EarInfection.csv"))

EarInfection$Swimmer <- factor(EarInfection$Swimmer,
                               levels = 0:1,
                               labels = c("Occasional",
                                          "Frequent"))
EarInfection$Location <- factor(EarInfection$Location,
                                levels = 0:1,
                                labels = c("Non-beach",
                                           "Beach"))
EarInfection$Age <- factor(EarInfection$Age,
                           levels = 1:3,
                           labels = c("15 to 19",
                                      "20 to 24",
                                      "25 to 29"))
EarInfection$Infections <- factor(EarInfection$Infections,
                                  levels = 0:1,
                                  labels = c("Yes",
                                             "No"))
usethis::use_data(EarInfection, 
                  overwrite = TRUE)
write.csv(EarInfection, 
          file = file.path("..", "SRM-Textbook", "Data", "EarInfection.csv"), 
          row.names=FALSE)




EDpatients <- read.csv(file.path("data-raw","EDpatients.csv"))
usethis::use_data(EDpatients, 
                  overwrite = TRUE)
write.csv(EDpatients, 
          file = file.path("..", "SRM-Textbook", "Data", "EDpatients.csv"), 
          row.names=FALSE)


##############################
Elephants <- read.csv(file.path("data-raw", "sex-specific-dataset.csv"),
                      sep = ";")
Elephants <- dplyr::select(Elephants,
                           Sex = sex,
                           Age = age,
                           Chest = chest,
                           Height = height,
                           Mass = body_mass)
Ecomplete <- complete.cases(Elephants)
Elephants <- Elephants[ Ecomplete, ]
                           
usethis::use_data(Elephants,
                  overwrite = TRUE)
write.csv(Elephants, 
          file = file.path("..", "SRM-Textbook", "Data", "Elephants.csv"), 
          row.names=FALSE)


##############################
### Processing needed
EmeraldAug <- read.csv(file.path("data-raw","EmeraldAug.csv"))
EmeraldAug <- select(EmeraldAug,
                     Phase,
                     Rain,
                     SOI,
                     Year)
usethis::use_data(EmeraldAug, 
                  overwrite = TRUE)
write.csv(EmeraldAug, 
          file = file.path("..", "SRM-Textbook", "Data", "EmeraldAug.csv"), 
          row.names=FALSE)



##############################
EVpurchase <- read.csv(file.path("data-raw","EVpurchase.csv"))
usethis::use_data(EVpurchase, 
                  overwrite = TRUE)
write.csv(EVpurchase, 
          file = file.path("..", "SRM-Textbook", "Data", "EVpurchase.csv"), 
          row.names=FALSE)


##############################
Ferritin <- read.csv(file.path("data-raw","Ferritin.csv"))
usethis::use_data(Ferritin, 
                  overwrite = TRUE)
write.csv(Ferritin, 
          file = file.path("..", "SRM-Textbook", "Data", "Ferritin.csv"),
          row.names = FALSE)


##############################
### Exception: Processing needed
Flowering <- read.csv(file.path("data-raw","salix_and_pv_phenology_data.csv"))

Flowering <- dplyr::select(Flowering,
                           Willow = julian.day...Salix,
                           Skypilot = julian.day...Polemonium,
                           MinTemp = min.temp.June,
                           Altitude = altitude)

# Altitude is in the form "11,500", so convert to numeric:
Flowering$Altitude <- as.numeric(sub(",", 
                                     "", 
                                     Flowering$Altitude))

usethis::use_data(Flowering, 
                  overwrite = TRUE)
write.csv(Flowering, 
          file = file.path("..", "SRM-Textbook", "Data", "Flowering.csv"), 
          row.names = FALSE)




##############################
Fluoro <- read.csv(file.path("data-raw","Fluoro.csv"))
usethis::use_data(Fluoro, 
                  overwrite = TRUE)
write.csv(Fluoro, 
          file = file.path("..", "SRM-Textbook", "Data", "Fluoro.csv"), 
          row.names = FALSE)


##############################
ForwardFall <- read.csv(file.path("data-raw","ForwardFall.csv"))
usethis::use_data(ForwardFall, 
                  overwrite = TRUE)
write.csv(ForwardFall, 
          file = file.path("..", "SRM-Textbook", "Data", "ForwardFall.csv"),
          row.names = FALSE)



##############################
FriesWt <- c(117, 126, 128, 132, 133, 133, 134, 137, 138, 139, 139, 140, 141, 
             142, 142.5, 143, 143.5, 145, 146, 146, 151, 152, 152, 154, 154, 
             154.5, 154.5, 155, 156, 156.5, 157, 176)
FriesWt <- data.frame( FriesWt = FriesWt)

usethis::use_data(FriesWt, 
                  overwrite = TRUE)
write.csv(FriesWt, 
          file = file.path("..", "SRM-Textbook", "Data", "FriesWt.csv"),
          row.names = FALSE)




##############################
### Exception: Processing needed
Fruit2014 <- read.csv(file.path("data-raw", "pair_2014_For_Dryad.csv") )
Fruit2015 <- read.csv(file.path("data-raw", "pair_2015_For_Dryad.csv") )

# Merge
Fruit <- dplyr::inner_join(Fruit2014, 
                           Fruit2015,
                           by = "Farm.ID")

Fruit <- dplyr::select(Fruit,
                       Farm = Farm.ID,
                       Flowers2014 = Total.flower.x,
                       Flowers2015 = Total.flower.y,
                       Fruit2014 = Total.Fruit.Formed.1,
                       Fruit2015 = Total.Fruit.Formed,
                       FLength2014 = Fruit.length.x,
                       FLength2015 = Fruit.length.y,
                       FBreadth2014 = Fruit.Breadth.x,
                       FBreadth2015 = Fruit.Breadth.y,
                       FWeight2014 = Fruit.Weight.x,
                       FWeight2015 = Fruit.Weight.y)

usethis::use_data(Fruit, 
                  overwrite = TRUE)
write.csv(Fruit, 
          file = file.path("..", "SRM-Textbook", "Data", "Fruit.csv"),
          row.names = FALSE)



##############################
### Exception: Processing needed
Gorillas <- read.csv(file.path("data-raw", "Gorillas.csv") )
Gorillas$Age20 <- ifelse( Gorillas$Age < 20,
                          "Younger",
                          "Older")
Gorillas <- select(Gorillas,
                   BackBreadth,
                   ChestBeatRate,
                   FocalTime,
                   Male,
                   NoChestBeats,
                   Age,
                   Age20)
usethis::use_data(Gorillas, 
                  overwrite = TRUE)
write.csv(Gorillas, 
          file = file.path("..", "SRM-Textbook", "Data", "Gorillas.csv"),
          row.names = FALSE)



##############################
HatSunglasses <- read.csv(file.path("data-raw", "HatSunglasses.csv") )
usethis::use_data(HatSunglasses, 
                  overwrite = TRUE)
write.csv(HatSunglasses, 
          file = file.path("..", "SRM-Textbook", "Data", "HatSunglasses.csv"),
          row.names = FALSE)


##############################
HCrabs <- read.csv(file.path("data-raw","HCrabs.csv"))
usethis::use_data(HCrabs, 
                  overwrite = TRUE)
write.csv(HCrabs, 
          file = file.path("..", "SRM-Textbook", "Data", "HCrabs.csv"), 
          row.names = FALSE)


##############################
# HusbandWife <- read.csv(file.path("data-raw","HusbandWife.csv")
# usethis::use_data(HusbandWife, overwrite = TRUE)
# write.csv(HusbandWife, file = file.path("..", "SRM-Textbook", "Data", "HusbandWife.csv")




##############################
Pre <-  c( 83, 292, 293, 623, 792, 1543, 1668, 1960, 2877, 2961, 5504)
Post <- c( 83, 292, 292, 542, 709, 1000, 1000, 1626, 2502, 2711, 4504)

IgE <- data.frame( Before = Pre,
                   After = Post,
                   Reduction = Pre - Post)
usethis::use_data(IgE, 
                  overwrite = TRUE)
write.csv(IgE, 
          file = file.path("..", "SRM-Textbook", "Data", "IgE.csv"), 
          row.names = FALSE)



##############################
Insulation <- read.csv(file.path("data-raw","InsulationBeforeAfter.csv"))
usethis::use_data(Insulation, 
                  overwrite = TRUE)
write.csv(Insulation, 
          file = file.path("..", "SRM-Textbook", "Data", "Insulation.csv"),
          row.names = FALSE)



##############################
Jeans <- read.csv(file.path("data-raw","measurements.csv"))

# Now load the json file, with other data
# install.packages("jsonlite")
library(jsonlite)
json_data <- jsonlite::fromJSON("./data-raw/measurementRectangles.json")
df <- as.data.frame(json_data)
head(df)

Jeans <- select( Jeans,
                 Brand = brand,
                 Style = style,
                 Sex = menWomen,
                 Price = price,
                 MaxHeightFront = maxHeightFront,
                 MinHeightFront = minHeightFront,
                 MaxWidthFront = maxWidthFront,
                 MinWidthFront = minWidthFront,
                 #
                 MaxHeightBack = maxHeightBack,
                 MinHeightBack = minHeightBack,
                 MaxWidthBack = maxWidthBack,
                 MinWidthBack = minWidthBack)
Jeans$Area <- df$pocketArea
Jeans$Style2 <- df$updatedStyle

usethis::use_data(Jeans, 
                  overwrite = TRUE)
write.csv(Jeans, 
          file = file.path("..", "SRM-Textbook", "Data", "Jeans.csv"), 
          row.names = FALSE)





##############################
Jellyfish <- read.csv(file.path("data-raw","Jellyfish.csv"))

usethis::use_data(Jellyfish, 
                  overwrite = TRUE)
write.csv(Jellyfish, 
          file = file.path("..", "SRM-Textbook", "Data", "Jellyfish.csv"), 
          row.names = FALSE)


##############################
Jumping.tmp <- read.csv(file.path("data-raw","Footwear_OSF.csv"))
Jumping <- data.frame( Shoes = rowMeans( Jumping.tmp[, 2:4] ),
                       Barefoot = rowMeans( Jumping.tmp[, 5:7] ) )
usethis::use_data(Jumping, 
                  overwrite = TRUE)
write.csv(Jumping, 
          file = file.path("..", "SRM-Textbook", "Data", "Jumping.csv"), 
          row.names = FALSE)



##############################
# Kerbside <- read.csv(file.path("data-raw","Kerbside.csv")
# usethis::use_data(Kerbside, overwrite = TRUE)
# write.csv(Kerbside, file = file.path("..", "SRM-Textbook", "Data", "Kerbside.csv"), row.names = FALSE)


##############################
KStones <- read.csv(file.path("data-raw","KStones.csv"))
usethis::use_data(KStones, 
                  overwrite = TRUE)
write.csv(KStones, 
          file = file.path("..", "SRM-Textbook", "Data", "KStones.csv"), 
          row.names = FALSE)


##############################
Lime <- read.csv(file.path("data-raw","Lime.csv"))
usethis::use_data(Lime, 
                  overwrite = TRUE)
write.csv(Lime, 
          file = file.path("..", "SRM-Textbook", "Data", "Lime.csv"), 
          row.names = FALSE)


##############################
LungCap <- read.csv(file.path("data-raw","LungCap.csv"))
usethis::use_data(LungCap, 
                  overwrite = TRUE)
write.csv(LungCap, 
          file = file.path("..", "SRM-Textbook", "Data", "LungCap.csv"), 
          row.names = FALSE)


##############################
# Lynx <- read.csv(file.path("data-raw","Lynx.csv"))
# usethis::use_data(Lynx, overwrite = TRUE)
# write.csv(Lynx, file = file.path("..", "SRM-Textbook", "Data", "Lynx.csv")


##############################
Mandible <- read.csv(file.path("data-raw","Mandible.csv"))
usethis::use_data(Mandible, 
                  overwrite = TRUE)
write.csv(Mandible, 
          file = file.path("..", "SRM-Textbook", "Data", "Mandible.csv"), 
          row.names = FALSE)


##############################
### Exception: Processing needed
MaryRiver <- read.csv(file.path("data-raw","MaryRiver.csv"))
MaryRiver$Year <- substr(MaryRiver$Date.and.time,
                         start = 7, 
                         stop = 8)
MaryRiver$Year <- as.numeric(MaryRiver$Year)

MaryRiver$Month <- substr(MaryRiver$Date.and.time,
                          start = 4, 
                          stop = 5)
MaryRiver$Month <- as.numeric(MaryRiver$Month)

MaryRiver <- dplyr::select(MaryRiver,
                           Month,
                           Year,
                           Mean)
usethis::use_data(MaryRiver, 
                  overwrite = TRUE)
write.csv(MaryRiver, 
          file = file.path("..", "SRM-Textbook", "Data", "MaryRiver.csv"), 
          row.names = FALSE)




##############################
Mumps <- read.csv(file.path("data-raw","Mumps.csv"))
usethis::use_data(Mumps, 
                  overwrite = TRUE) 
write.csv(Mumps, 
          file = file.path("..", "SRM-Textbook", "Data", "Mumps.csv"), 
          row.names = FALSE)




##############################
NMiner <- read.csv(file.path("data-raw","NMiner.csv"))
NMiner <- data.frame( Eucs = NMiner$Eucs,
                      Minerab = NMiner$Minerab)
usethis::use_data(NMiner, 
                  overwrite = TRUE) # Just  Minerab  and  Eucs
write.csv(NMiner, 
          file = file.path("..", "SRM-Textbook", "Data", "NMiner.csv"), 
          row.names = FALSE)



##############################
Gender <- rep("M", 15)
Gender[ c(11, 14, 15)] <- "F"
Age <- c(9, 7, 7, 12, 11, 5, 6, 8, 8, 6, 7, 11, 7, 9, 8)
Ht <- c(136, 106, 129, 152, 146, 113, 112, 112, 138, 116, 113, 
        141, 136, 128, 133)
Wt <- c(34.5, 16.2, 21.1, 40.4, 39.3, 18.1, 16.7, 19.1, 28.6, 19.3, 
        17.6, 34.9, 34.5, 21.9, 23.0)
GMFCS <- c(1, 2, 1, 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1)
Orthoses <- data.frame(
  Gender = Gender,
  Age = Age,
  Height = Ht,
  Weight = Wt,
  GMFCS = GMFCS)
  
usethis::use_data(Orthoses, 
                  overwrite = TRUE)
write.csv(Orthoses, 
          file = file.path("..", "SRM-Textbook", "Data", "Orthoses.csv"), 
          row.names = FALSE)



##############################
OSA <- read.csv(file.path("data-raw","OSA.csv"))
usethis::use_data(OSA, 
                  overwrite = TRUE)
write.csv(OSA, 
          file = file.path("..", "SRM-Textbook", "Data", "OSA.csv"), 
          row.names = FALSE)


##############################
PainRelief <- read.csv(file.path("data-raw","PainRelief.csv"))

PainRelief <- dplyr::select(PainRelief,
                            ID = id,
                            Time = time,
                            Score = score,
                            Group = group,
                            Age = age,
                            Parity = parity,
                            ChildSex = childsex,
                            Birthweight = birthweight)
PainRelief$Group[PainRelief$Group == "palacetamol"] <- "paracetamol"

usethis::use_data(PainRelief, 
                  overwrite = TRUE)
write.csv(PainRelief, 
          file = file.path("..", "SRM-Textbook", "Data", "PainRelief.csv"), 
          row.names = FALSE)



##############################
Peas <- read.csv(file.path("data-raw","Peas.csv"))
usethis::use_data(Peas, 
                  overwrite = TRUE)
write.csv(Peas, 
          file = file.path("..", "SRM-Textbook", "Data", "Peas.csv"),
          row.names = FALSE)


##############################
Perm <- read.csv(file.path("data-raw","Perm.csv"))
usethis::use_data(Perm, 
                  overwrite = TRUE)
write.csv(Perm, 
          file = file.path("..", "SRM-Textbook", "Data", "Perm.csv"), 
          row.names = FALSE)


##############################
PetBirds <- read.csv(file.path("data-raw","PetBirds.csv"))
usethis::use_data(PetBirds, 
                  overwrite = TRUE)
write.csv(PetBirds, 
          file = file.path("..", "SRM-Textbook", "Data", "PetBirds.csv"), 
          row.names = FALSE)


##############################
Placebos <- read.csv(file.path("data-raw","Placebos.csv"))
usethis::use_data(Placebos, 
                  overwrite = TRUE)
write.csv(Placebos, 
          file = file.path("..", "SRM-Textbook", "Data", "Placebos.csv"),
          row.names = FALSE)



##############################
PizzaSize <- read.csv(file.path("data-raw","PizzaSize.csv"))
PizzaSize <- PizzaSize[, c(2, 4, 5, 6, 7)]
usethis::use_data(PizzaSize, 
                  overwrite = TRUE)
write.csv(PizzaSize, 
          file = file.path("..", "SRM-Textbook", "Data", "PizzaSize.csv"), 
          row.names = FALSE)



##############################
### Exception: Processing needed
## Select bits from PossumsALL.csv
Possums <- read.csv(file.path("data-raw","PossumsALL.csv"))
Possums <- dplyr::select(Possums,
                         Sex,
                         Wgt,
                         DEM)
usethis::use_data(Possums, 
                  overwrite = TRUE)
write.csv(Possums, 
          file = file.path("..", "SRM-Textbook", "Data", "Possums.csv"),
          row.names = FALSE)




##############################
PremierL <- read.csv(file.path("data-raw","england-premier-league-2019-to-2020.csv"))
PremierL<- dplyr::select(PremierL,
                         Date = Date,
                         HomeTeam = HomeTeam,
                         AwayTeam = AwayTeam,
                         HomeGoals = FTHG,
                         AwayGoals = FTAG,
                         Result = FTR)

usethis::use_data(PremierL, 
                  overwrite = TRUE)
write.csv(PremierL,
          file = file.path("..", "SRM-Textbook", "Data", "PremierL.csv"),
          row.names = FALSE)



##############################
Sex <- gl( n = 2,
           k = 1, 
           length = 8,
           labels = c("F", "M") )
School <- gl( n = 2,
              k = 2, 
              length = 8,
              labels = c("Government", 
                         "Non-government") )
FNations <- gl( n = 2,
                k = 4,
                length = 8,
                labels = c("Yes", 
                           "No") )
Counts <- c(2540,
            2734,
            391,
            362,
            21219,
            22574,
            9496,
            9963)

QSchools <- data.frame(Counts = Counts,
                       Sex = Sex,
                       FNations = FNations,
                       School = School)

usethis::use_data(QSchools, 
                  overwrite = TRUE)
write.csv(QSchools, 
          file = file.path("..", "SRM-Textbook", "Data", "QSchools.csv"),
          row.names = TRUE)



##############################
ReactionTime <- read.csv(file.path("data-raw","ReactionTimePhoneInd.csv"))
usethis::use_data(ReactionTime, 
                  overwrite = TRUE)
write.csv(ReactionTime, 
          file = file.path("..", "SRM-Textbook", "Data", "ReactionTime.csv"),
          row.names = FALSE)


##############################
# RecoveryTime <- read.csv(file.path("data-raw","RecoveryTime.csv")
# usethis::use_data(RecoveryTime, 
#.                  overwrite = TRUE)
# write.csv(RecoveryTime, 
#.          file = file.path("..", "SRM-Textbook", "Data", "RecoveryTime.csv"), 
#.          row.names = FALSE)


##############################
RedDeer <- read.csv(file.path("data-raw","RedDeer.csv"))
usethis::use_data(RedDeer, 
                  overwrite = TRUE)
write.csv(RedDeer, 
          file = file.path("..", "SRM-Textbook", "Data", "RedDeer.csv"), 
          row.names = FALSE)


##############################
Removal <- read.csv(file.path("data-raw","Removal.csv"))
usethis::use_data(Removal, 
                  overwrite = TRUE)
write.csv(Removal, 
          file = file.path("..", "SRM-Textbook", "Data", "Removal.csv"), 
          row.names = FALSE)


##############################
RipsID <- read.csv(file.path("data-raw","RipsID.csv"))
usethis::use_data(RipsID, 
                  overwrite = TRUE)
write.csv(RipsID, 
          file = file.path("..", "SRM-Textbook", "Data", "RipsID.csv"), 
          row.names = FALSE)


##############################
Running <- read.csv(file.path("data-raw","Running.csv"),
                    skip = 1)
Running <- dplyr::select(Running,
                         ID = participant_id,
                         Trial = trial_block,
                         Speed = run.speed..km.h.,
                         HRM = HRM,
                         NOVA = NOVA,
                         RDP = RDP,
                         Footpod = Footpod,
                         Video = VMCS)

usethis::use_data(Running, 
                  overwrite = TRUE)
write.csv(Running, 
          file = file.path("..", "SRM-Textbook", "Data", "Running.csv"),
          row.names = FALSE)


##############################
### Exception: Processing needed
Sanddollars <- read.csv(file.path("data-raw","Fertilization_data.csv"))
Sanddollars <- dplyr::select(Sanddollars,
                             SD.temperatures,
                             SD.fertilization,
                             SD.speeds,
                             SD.motility)
Sanddollars <- Sanddollars[1:36, ] # Others rows contains "n/a" strings
Sanddollars <- data.frame(
  SD.temperatures = as.numeric(Sanddollars$SD.temperatures),
  SD.fertilization = as.numeric(Sanddollars$SD.fertilization),
  SD.speeds = as.numeric(Sanddollars$SD.speeds),
  SD.motility = as.numeric(Sanddollars$SD.motility)
)
usethis::use_data(Sanddollars,
                  overwrite = TRUE)
write.csv(Sanddollars,
          file = file.path("..", "SRM-Textbook", "Data", "Sanddollars.csv"), 
          row.names = FALSE)



##############################
ScarHeight <- read.csv(file.path("data-raw","ScarHeight.csv"))
usethis::use_data(ScarHeight, 
                  overwrite = TRUE)
write.csv(ScarHeight, 
          file = file.path("..", "SRM-Textbook", "Data", "ScarHeight.csv"),
          row.names = FALSE)


##############################
SDrink <- read.csv(file.path("data-raw","SDrink.csv"))
usethis::use_data(SDrink, 
                  overwrite = TRUE)
write.csv(SDrink, 
          file = file.path("..", "SRM-Textbook", "Data", "SDrink.csv"), 
          row.names = FALSE)


##############################
ShoppingBags <- read.csv(file.path("data-raw","ShoppingBags.csv"))
colnames(ShoppingBags) <- c("AgeGroup",
                            "BringBags",
                            "Counts")
usethis::use_data(ShoppingBags, 
                  overwrite = TRUE)
write.csv(ShoppingBags, 
          file = file.path("..", "SRM-Textbook", "Data", "ShoppingBags.csv"), 
          row.names = FALSE)



##############################
### Exception: Processing needed
Snakes <- read.csv(file.path("data-raw","Snakes.csv"))
SPtable <- table(Snakes$SPECIES)
Snakes <- subset(Snakes,
                 (SPECIES == names(SPtable)[4]) | 
                 (SPECIES == names(SPtable)[5]))
Snakes$Crayfish <- ifelse( Snakes$SPECIES == "T. mel No eat crayfish", 
                           "NoCfish",
                           "Cfish")

Snakes <- dplyr::select(Snakes,
                        Crayfish = Crayfish,
                        Sex = SEX,
                        SVL = SVL..cm.,
                        Teeth = TEETH.NUMBER
)
# Remove some empty strings in variable 'Sex'
Snakes$Sex[ Snakes$Sex == "" ] <- NA 


usethis::use_data(Snakes, 
                  overwrite = TRUE)
write.csv(Snakes, 
          file = file.path("..", "SRM-Textbook", "Data", "Snakes.csv"), 
          row.names = FALSE)




##############################
### Exception: Processing needed
Soils <- read.csv(file.path("data-raw","Soils.csv"))
Soils <- dplyr::select(Soils,
                       Sample,
                       Gravel,
                       Sand,
                       Clay,
                       PI,
                       CBR)
usethis::use_data(Soils, 
                  overwrite = TRUE)
write.csv(Soils, 
          file = file.path("..", "SRM-Textbook", "Data", "Soils.csv"), 
          row.names = FALSE)


##############################
SoilCN <- read.csv(file.path("data-raw","SoilCN.csv"))
usethis::use_data(SoilCN, 
                  overwrite = TRUE)
write.csv(SoilCN, 
          file = file.path("..", "SRM-Textbook", "Data", "SoilCN.csv"),
          row.names = FALSE)


##############################
Speed <- read.csv(file.path("data-raw","Speed.csv"))
usethis::use_data(Speed, 
                  overwrite = TRUE)
write.csv(Speed, 
          file = file.path("..", "SRM-Textbook", "Data", "Speed.csv"),
          row.names = FALSE)


##############################
Stress <- read.csv(file.path("data-raw","Stress.csv"))
usethis::use_data(Stress, 
                  overwrite = TRUE)
write.csv(Stress, 
          file = file.path("..", "SRM-Textbook", "Data", "Stress.csv"), 
          row.names = FALSE)



##############################
StudentsEat <- read.csv(file.path("data-raw","UniStudentsLong.csv"))
usethis::use_data(StudentsEat, 
                  overwrite = TRUE)
write.csv(StudentsEat, 
          file = file.path("..", "SRM-Textbook", "Data", "StudentsEat.csv"),
          row.names = FALSE)


##############################
StudentWt <- read.csv(file.path("data-raw","StudentWt.csv"))
usethis::use_data(StudentWt, 
                  overwrite = TRUE)
write.csv(StudentWt, 
          file = file.path("..", "SRM-Textbook", "Data", "StudentWt.csv"),
          row.names = FALSE)


##############################
TapeOriginal <- read.csv(file.path("data-raw","Tape.csv"))

# Lots of empty cols:
emptyColumns <- which(colSums( is.na(TapeOriginal) ) == dim(TapeOriginal)[1])
Tape <- TapeOriginal[, -emptyColumns]
 # Now 16 x 72

Tape <- dplyr::select(Tape,
                      Age = AGE,
                      Sex = SEX,
                      Pre.Left.KT.NoTension      = KT.NO.TENSION_PrePPT_LEFT.ARM,
                      Pre.Right.KT.NoTension     = KT.NO.TENSION_PrePPT_RIGHT.ARM,		
                      Post1.Left.KT.NoTension    = KT.NO.TENSION_POST1_PPT_LEFT.ARM,
                      Post1.Right.KT.NoTension   = KT.NO.TENSION_POST1_PPT_RIGHT.ARM,
                      Post2.Left.KT.NoTension    = KT.NO.TENSION_POST2_PPT_LEFT.ARM,
                      Post2.Right.KT.NoTension   = KT.NO.TENSION_POST2_PPT_RIGHT.ARM,
                      
                      #Pre.Left.75KT.Tension      = KT.75..TENSION_PRE_PPT_LEFT.ARM,
                      #Pre.Right.75KT.Tension     = KT.75..TENSION_PRE_PPT_RIGHT.ARM,
                      Post1.Left.75KT.Tension    = KT.75..TENSION_POST1_PPT_LEFT.ARM,
                      Post1.Right.75KT.Tension   = KT.75..TENSION_POST1_PPT_RIGHT.ARM,
                      Post2.Left.75KT.Tension    = KT.75..TENSION_POST2_PPT_LEFT.ARM,
                      Post2.Right.75KT.Tension   = KT.75..TENSION_POST2_PPT_RIGHT.ARM,
                      
                      Pre.Left.NoTape         = NO.KT_PrePPT_LEFT.ARM,
                      Pre.Right.NoTape        = NO.KT_PrePPT_RIGHT.ARM,
                      Post1.Left.NoTape       = NO.KT_POST1_PPT_LEFT.ARM,
                      Post1.Right.NoTape      = NO.KT_POST1_PPT_RIGHT.ARM,
                      Post2.Left.NoTape       = NO.KT_POST2_PPT_LEFT.ARM,
                      Post2.Right.NoTape      = NO.KT_POST2_PPT_RIGHT.ARM)

# To help select columns
# TapeDetails <- list(LeftArm  = seq(3, 18, by = 2),
#                     RightArm = seq(4, 18, by = 2),
#                     
#                     NoTension = 3:8,
#                     
#                     KT = 3:8,
#                     KT75 = 9:12,
#                     NoKT = 13:18)

usethis::use_data(Tape, 
                  overwrite = TRUE)
write.csv(Tape, 
          file = file.path("..", "SRM-Textbook", "Data", "Tape.csv"),
          row.names = FALSE)


##############################
Throttle <- read.csv(file.path("data-raw","Throttle.csv"))
usethis::use_data(Throttle, 
                  overwrite = TRUE)
write.csv(Throttle, 
          file = file.path("..", "SRM-Textbook", "Data", "Throttle.csv"), 
          row.names = FALSE)


##############################
Turbines <- read.csv(file.path("data-raw","Turbines.csv"))
Turbines <- subset(Turbines, 
                   (Hours == "1800h") | (Hours == "3000h") )

usethis::use_data(Turbines, 
                  overwrite = TRUE)
write.csv(Turbines, 
          file = file.path("..", "SRM-Textbook", "Data", "Turbines.csv"), 
          row.names = FALSE)




##############################
TurtleNests <- read.csv(file.path("data-raw","TurtleNests.csv"))
usethis::use_data(TurtleNests, 
                  overwrite = TRUE)
write.csv(TurtleNests, 
          file = file.path("..", "SRM-Textbook", "Data", "TurtleNests.csv"), 
          row.names = FALSE)


##############################
### Exception: Processing needed

# This code taken from 
# https://osf.io/u2xyz?view_only=87885752038b4be190d532143fdedb07, RQ1.R, 
# and adapted to get what I want

load(file.path("data-raw", "Typing", "txt_insdelsub.RData"))  # by text and/or by subject
load(file.path("data-raw", "Typing", "txt_ikis.RData"))

# Select sample we will be working with
load(file.path("data-raw", "Typing", "SubjIn_final.RData"))

txtikis <- subset(txtikis, 
                  Subject %in% SubjIn)
txtres <- subset(txtres, 
                 Subject %in% SubjIn)

txtikis <- droplevels(txtikis) #fixes it
ddd <- as.data.frame( table( txtikis$Subject,
                             txtikis$icur ))

# Typing speed --- iki should have 11709 rows
iki <- plyr::ddply(txtikis, 
                   .(Subject,icur),
                   .drop = F, 
                   summarize, 
                   total = sum(ikis), 
                   nb = max(count))

sent <- read.table("./data-raw/Typing/signatures2_ascii.txt", 
                   sep = '\n', 
                   encoding = "latin1", 
                   header = TRUE, 
                   stringsAsFactors = FALSE)
sent$icur <- seq(1:nrow(sent))
sent <- sent[1:9, ]
sent$nchar <- nchar(sent$sentence)

iki <- merge(iki, 
             sent[, c('icur', 'nchar')], 
             all.x = TRUE)

# Remove sentences with at least half the number of characters
# plot % of nb/nchar
iki$perc <- iki$nb/iki$nchar

# Here, exclude some subjects that have too low accuracy and 
# put it back in SampleChar.R
a <- droplevels(subset(iki, 
                       nb < nchar/2))
b <- names( which( table( a$Subject) > 6 ) )

iki <- subset(iki, 
              nb > (nchar/2))

iki$totalmin <- iki$total/(60 * 1000)
iki$TSabs <- iki$nchar / (5 * iki$totalmin) # 5-char words per minute
iki$TSrel <- iki$nb / (5 * iki$totalmin) # 5-char words per minute

# Accuracy
txtres <- merge(txtres, 
                sent[, c('icur', 'nchar')])
txtres <- merge(txtres, 
                iki, 
                all = TRUE)

txtres$idsnorm <- txtres$insdelsub/txtres$nchar
txtres$accuracy <- (txtres$nchar - txtres$insdelsub) / txtres$nchar

# For some computing reason, some values of accuracy are under 0 
# and should be removed
txtres <- subset(txtres, txtres$accuracy > 0)

# Merge both
txt <- merge(iki,txtres)
# save(txt, file = 'txt_all.RData', row.names = F, col.names = T)


# Analysis ----
# ---

load('.//data-raw//Typing/txt_all.RData')
# txt = subset(txt, Subject %in% SubjIn)

# average over sentences by subject
m1 <- plyr::ddply(txt, 
                  .(Subject), 
                  summarize, 
                  mTS = mean(TSrel), 
                  mAcc = mean(accuracy))

# ggplot(m1, aes(mAcc, mTS)) + geom_point()



##### START MY EFFORTS
# Demographic info in  allabout
load('.//data-raw//Typing/allabout.RData') # alabout contains age and gender

mPKD <- ddply(allabout, 
              .(Subject), 
              summarize, 
              Age = (age), 
              Sex = (gender))

# Now merge with m1
Typing <- dplyr::inner_join(as.data.frame(m1), 
                            as.data.frame(mPKD), 
                            by = "Subject")

rm(mPKD, m1)
usethis::use_data(Typing, 
                  overwrite = TRUE)
write.csv(Typing, 
          file = file.path("..", "SRM-Textbook", "Data", "Typing.csv"), 
          row.names = FALSE)



##############################
Water <- read.csv2(file.path("data-raw", "Water.csv"))

names(Water) <- c("District", "Date", "code",
                  "NameCaretaker", "PhoneNb", "age",
                  "TotalHHsize", "TotalHHU5", "TotalHHU5.1",
                  "Education", "Education.1", "Animals",
                  "Animals.1", "AnimalsTypes", "AnimalsTypes.1",
                  "Garden", "Garden.1", "GPSX",
                  "GPSY", "ChildrenHealth", "ChildrenHealth.1",
                  "DiseaseHealth", "Diarrhea", "Stomachache",
                  "Fever", "Rashes", "Vomiting",
                  "DrinkContainer", "DrinkContainer.1", "DrinkFreq",
                  "DrinkFreq.1", "DrinkCup", "DrinkCup.1",
                  "DrinkAmt", "TotalDrink24h", "UsedDrinkWater",
                  "ProxSource", "ProxSource.1", "ProxSource2",
                  "ProxSource2.1", "AmtDrink", "AmtUsed",
                  "DrinkSource", "DrinkSource.1", "DrinkPay",
                  "DrinkPay.1", "DistanceDrinkSource", 
                  "DistanceDrinkSource.1",
                  "TimeDrinkSour", "TimeDrinkSour.1", "QueueDrinkSource",
                  "QueueDrinkSource.1", "TripDrinkSour", "TripDrinkSour.1",
                  "UsedDrinkWater.1", "UsedDrinkWater.2", 
                  "SatisfactionDrinking",
                  "SatisfactionDrinking.1", "SatisfactionWhy", "ContainerDrink",
                  "ContainerDrink.1", "CoverDrinking", "CoverDrinking.1",
                  "FetchDrink", "Children", "Teenager",
                  "Adults", "FetchDrink.1", "ChangeContainerDrink",
                  "ChangeContainerDrink.1", "StorageDrink", "StorageDrink.1",
                  "ProblemWaterFetching", "ProblemWaterFetching.1", 
                  "WhenDrinkLast",
                  "WhoFetchLast", "WhoFetchLast.1", "WhereFetchLast",
                  "WhereFetchLast.1", "ChorSource", "ChorSource.1",
                  "ChorePay", "ChorePay.1", "DistanceChoreSource",
                  "DistanceChoreSource.1", "TimeChoreSource", "TimeChoreSource.1",
                  "QueueChoreSource", "QueueChoreSource.1", "TripChoreSource",
                  "TripChoreSource.1", "UsedCHOreWater", "UsedCHOreWater.1",
                  "SatisfiedChoreAmount", "SatisfiedChoreAmount.1", 
                  "SatsfiedChoreWhy",
                  "ContainerChore", "ContainerChore.1", "CoverChore",
                  "CoverChore.1", "FetchChore", "FetchChore.1",
                  "ChnageCOntainerChore", "ChnageCOntainerChore.1", 
                  "StorageChore",
                  "StorageChore.1", "ProblemWaterChore", "ProblemWaterChore.1",
                  "WhenChoreLast", "WhoChoreLast", "WhoChoreLast.1",
                  "WhereFetchChoreLast", "WhereFetchChoreLast.1", 
                  "ObsoContDrink",
                  "ObsoChoreCONtainer", "ObsoDrinkAmt", "ObsoChoreAmt",
                  "MaximumStorageDrinking", "MaximumStorageDrinking.1", 
                  "DrinkingFrequency",
                  "DrinkingFrequency.1", "ContainerForDrinking", 
                  "ContainerForDrinking.1",
                  "WATINE1", "WATINE2", "WATINE3",
                  "WATINE4", "WATINE5", "WATINE6",
                  "WATINE7", "WATINE8", "WATINE9",
                  "WATINE10", "WATINE11", "WATINE12",
                  "WATINE13", "WATINE14", "WATINE15",
                  "WATINE16", "WATINE17", "TotalHWISA",
                  "TreatWaterDrink", "TreatWaterDrink.1", "HowTreat",
                  "HowTreat.1", "AmtDrinkU5", "AmtDrinkU5.1",
                  "FreqDrinkU5", "WashingDrinkStorage", "WashingDrinkStorage.1",
                  "CleaningCompound", "CleaningCompound.1", "GarbageEvacuation",
                  "GarbageEvacuation.1", "UsedWaterEvac", "UsedWaterEvac.1",
                  "LatrineOwn", "LatrineOwn.1", "LatrineType",
                  "LatrineType.1", "LatrineShare", "Be4eat",
                  "AfterClean", "AfterClean.1", "AmtWater",
                  "WaterSourceMapped", "TypeWaterSourceMapped", 
                  "GPSXwatersource",
                  "GPSYwatersource")
# Process:
# - In R: names(Water)
# - In Notepad+: Convert spaces to ,
# In Google translate: Translate from French to English
# Then a bit of manual handling

WaterAccess <- data.frame( Region = Water$District,
                           Age = as.numeric(Water$age),
                           Education = Water$Education.1,
                           SourceDistance = Water$DistanceDrinkSource,
                           SourceQueueTime = Water$QueueDrinkSource.1,
                           HasGarden = Water$Garden,
                           HasLivestock = Water$Animals,
                           HouseholdPeople = Water$TotalHHsize,
                           HouseholdUnder5s = as.numeric(Water$TotalHHU5),
                           WaterSource = Water$DrinkSource.1,
                           WashContainer = Water$WashingDrinkStorage.1,
                           Diarrhea = Water$Diarrhea)

WaterAccess$Education <- factor(WaterAccess$Education,
                                levels = 1:5,
                                labels = c("Primary or less",
                                           "Primary or less",
                                           "Primary or less",
                                           "Secondary or higher",
                                           "Secondary or higher" ) )
                                
WaterAccess$SourceDistance <- ordered(WaterAccess$SourceDistance,
                                      levels = c("< 100 m",
                                                 "100 - 1000 m",
                                                 "> 1000 m"),
                                      labels = c("Under 100m",
                                                 "100m to 1000m",
                                                 "Over 1000m") )

WaterAccess$SourceQueueTime <- ordered(WaterAccess$SourceQueueTime,
                                       levels = c(1, 2, 3),
                                       labels = c("Under 5 min",
                                                 "5 to 15 min",
                                                 "Over 15 min") )

WaterAccess$WaterSource <- factor(WaterAccess$WaterSource,
                                  levels = 1:4,
                                  labels = c("Tap",
                                             "Bore",
                                             "Well",
                                             "River"))

WaterAccess$HasGarden <- factor(WaterAccess$HasGarden,
                               levels = c("non",
                                          "oui"),
                               labels = c("N",
                                          "Y") )

WaterAccess$HasLivestock <- factor(WaterAccess$HasLivestock,
                                  levels = c("Non",
                                             "non",
                                             "oui"),
                                  labels = c("N",
                                             "N",
                                             "Y") )

WaterAccess$WashContainer <- ordered(WaterAccess$WashContainer,
                                    levels = 1:3,
                                    labels = c("Before each fill",
                                               "Once per week",
                                               "Once per month"))

WaterAccess$Diarrhea <- factor(WaterAccess$Diarrhea,
                               levels = 0:2,
                               labels = c("N",
                                          "Y",
                                          "N") )


usethis::use_data(WaterAccess, 
                  overwrite = TRUE)
write.csv(WaterAccess, 
          file = file.path("..", "SRM-Textbook", "Data", "WaterAccess.csv"),
          row.names = FALSE)


##############################
WC <- read.csv(file.path("data-raw","/Kinetic_and_temporal_datas.csv"))
# Turn participant labels into numbers by removing initial letter (a "P")
WC$X <- gsub("P", "", WC$X)
WC$X.3 <- gsub("P", "", WC$X.3)

# Take the *first* value for each participant
takeWR <- c(0, 
            which(diff( as.numeric(WC$X) ) > 0) )
PTwith <- WC$PT.WR[takeWR + 1]

takeWOR <- c(0, 
             which(diff( as.numeric(WC$X.3) ) > 0) )
PTwithout <- WC$PT.WOR[takeWOR + 1]

# Person 12 has no data for WR, so align:
PTwith <- c( PTwith[1:11], 
             NA,
             PTwith[12] )
WCTennis <- data.frame(Person = WC$X.3[takeWOR + 1],
                       PTwith = PTwith,
                       PTwithout = PTwithout)

usethis::use_data(WCTennis, 
                  overwrite = TRUE)
write.csv(WCTennis, 
          file = file.path("..", "SRM-Textbook", "Data", "WCTennis.csv"), 
          row.names = FALSE)



##############################
Windmill <- read.csv(file.path("data-raw","Windmill.csv"))
usethis::use_data(Windmill, 
                  overwrite = TRUE)
write.csv(Windmill, 
          file = file.path("..", "SRM-Textbook", "Data", "Windmill.csv"), 
          row.names = FALSE)


##############################
YieldDen <- read.csv(file.path("data-raw","YieldDen.csv"))
usethis::use_data(YieldDen, 
                  overwrite = TRUE)
write.csv(YieldDen, 
          file = file.path("..", "SRM-Textbook", "Data", "YieldDen.csv"), 
          row.names = FALSE)


#####################################################################################
# Now produce the man (.Rd) files

cat("*** Running roxygenise *** \n")
#setwd("..")
roxygen2::roxygenise()



###
devtools::check()     # local check
devtools::check_win_devel()  # optional: Windows check
devtools::check_rhub()       # optional: cross-platform check
###


# 
# # The following function runs a local R CMD check
# devtools::check()
# 
# # Check for CRAN specific requirements
# rhub::check()
# 
# # Checks
# devtools::check()
# devtools::check_win_devel()  # For Windows compatibility
# 
# 
# # Check on standard platforms
# usethis::use_github_action("check-standard")
# 
# 
# # Check for win-builder
# devtools::check_win_devel()
# 
# 
# # Generate your cran-comments.md, then you copy-paste the output from this function 
# usethis::use_cran_comments()
# 
# 
# # Build source package
# devtools::build()
# 
# 
# # Good practice
# library(goodpractice)
# goodpractice::gp()
