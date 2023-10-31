### code to prepare `DATASET` dataset goes here
### See: https://r-pkgs.org/data.html

library(usethis) # To save things and so on
library(dplyr) # For selecting variables
library(roxygen2)

###########################################################################
#  Save all the csv files and RData files
#  - Load names of data files
#  - Process **IF NEEDED**
#  - Save as .rda
#  - Save as .csv in the Textbook Data/ directory

AISsub <- read.csv("data-raw/AIS.csv")
AISsub <- data.frame( Sex = AISsub$Sex,
                      SSF = AISsub$SSF,
                      PBF = AISsub$PBF,
                      Sport = AISsub$Sport,
                      Wt = AISsub$Wt,
                      Ht = AISsub$Ht)
usethis::use_data(AISsub, overwrite = TRUE)
write.csv(AISsub, "..//SRM-Textbook//Data//AISsub.csv", row.names = FALSE)


Anorexia <- read.csv("data-raw/Anorexia.csv")
usethis::use_data(Anorexia, overwrite = TRUE)
write.csv(Anorexia, "..//SRM-Textbook//Data//Anorexia.csv")


B12Long <- read.csv("data-raw/B12Long.csv")
usethis::use_data(B12Long, overwrite = TRUE)
write.csv(B12Long, "..//SRM-Textbook//Data//B12Long.csv")


BabyBoom <- read.csv("data-raw/BabyBoom.csv")
usethis::use_data(BabyBoom, overwrite = TRUE)
write.csv(BabyBoom, "..//SRM-Textbook//Data//BabyBoom.csv")


Battery <- read.csv("data-raw/Battery.csv")
usethis::use_data(Battery, overwrite = TRUE)
write.csv(Battery, "..//SRM-Textbook//Data//Battery.csv")


Bitumen <- read.csv("data-raw/Bitumen.csv")
usethis::use_data(Bitumen, overwrite = TRUE)
write.csv(Bitumen, "..//SRM-Textbook//Data//Bitumen.csv")


BodyTemp <- read.csv("data-raw/BodyTemp.csv")
usethis::use_data(BodyTemp, overwrite = TRUE)
write.csv(BodyTemp, "..//SRM-Textbook//Data//BodyTemp.csv")


Captopril <- read.csv("data-raw/Captopril.csv")
usethis::use_data(Captopril, overwrite = TRUE)
write.csv(Captopril, "..//SRM-Textbook//Data//Captopril.csv")


Cyclones <- read.csv("data-raw/Cyclones.csv")
usethis::use_data(Cyclones, overwrite = TRUE)
write.csv(Cyclones, "..//SRM-Textbook//Data//Cyclones.csv")


Deceleration <- read.csv("data-raw/Deceleration.csv")
usethis::use_data(Deceleration, overwrite = TRUE)
write.csv(Deceleration, "..//SRM-Textbook//Data//Deceleration.csv")


DanishLC <- read.csv("data-raw/DanishLC.csv")
usethis::use_data(DanishLC, overwrite = TRUE)
write.csv(DanishLC, "..//SRM-Textbook//Data//DanishLC.csv", row.names = FALSE)


Dental <- read.csv("data-raw/Dental.csv")
usethis::use_data(Dental, overwrite = TRUE)
write.csv(Dental, "..//SRM-Textbook//Data//Dental.csv")


##############################
### Exception: Processing needed
Diabetes <- read.csv("data-raw/Diabetes.csv")
Diabetes <- dplyr::select(Diabetes,
                          bp.1s,
                          bp.1d,
                          bp.2s,
                          bp.2d)
Diabetes <- rename(Diabetes,
                   SBPfirst = bp.1s,
                   DBPfirst = bp.1d,
                   SBPsecond = bp.2s,
                   DBPsecond = bp.2d)
usethis::use_data(Diabetes, overwrite = TRUE)
write.csv(Diabetes, "..//SRM-Textbook//Data//Diabetes.csv")
##############################


##############################
### Exception: Processing needed
Dogs <- read.csv("data-raw/Dogs.csv")
Dogs <- select(Dogs,
               BL,
               BH,
               Chest,
               Waist)
usethis::use_data(Dogs, overwrite = TRUE)
write.csv(Dogs, "..//SRM-Textbook//Data//Dogs.csv")
##############################


EDpatients <- read.csv("data-raw/EDpatients.csv")
usethis::use_data(EDpatients, overwrite = TRUE)
write.csv(EDpatients, "..//SRM-Textbook//Data//EDpatients.csv")


##############################
### Exception: Processing needed
EmeraldAug <- read.csv("data-raw/EmeraldAug.csv")
EmeraldAug <- select(EmeraldAug,
               Phase,
               Rain,
               SOI,
               Year)
usethis::use_data(EmeraldAug, overwrite = TRUE)
write.csv(EmeraldAug, "..//SRM-Textbook//Data//EmeraldAug.csv")
##############################


Ferritin <- read.csv("data-raw/Ferritin.csv")
usethis::use_data(Ferritin, overwrite = TRUE)
write.csv(Ferritin, "..//SRM-Textbook//Data//Ferritin.csv")


Fluoro <- read.csv("data-raw/Fluoro.csv")
usethis::use_data(Fluoro, overwrite = TRUE)
write.csv(Fluoro, "..//SRM-Textbook//Data//Fluoro.csv", row.names = FALSE)


ForwardFall <- read.csv("data-raw/ForwardFall.csv")
usethis::use_data(ForwardFall, overwrite = TRUE)
write.csv(ForwardFall, "..//SRM-Textbook//Data//ForwardFall.csv")


##############################
### Exception: Processing needed
Gorillas <- read.csv("data-raw/Gorillas.csv")
Gorillas <- select(Gorillas,
                   Age,
                   BackBreadth,
                   ChestBeatRate,
                   FocalTime,
                   Male,
                   NoChestBeats)
usethis::use_data(Gorillas, overwrite = TRUE)
write.csv(Gorillas, "..//SRM-Textbook//Data//Gorillas.csv")
##############################


HatSunglasses <- read.csv("data-raw/HatSunglasses.csv")
usethis::use_data(HatSunglasses, overwrite = TRUE)
write.csv(HatSunglasses, "..//SRM-Textbook//Data//HatSunglasses.csv")


HCrabs <- read.csv("data-raw/HCrabs.csv")
usethis::use_data(HCrabs, overwrite = TRUE)
write.csv(HCrabs, "..//SRM-Textbook//Data//HCrabs.csv", row.names = FALSE)


HusbandWife <- read.csv("data-raw/HusbandWife.csv")
usethis::use_data(HusbandWife, overwrite = TRUE)
write.csv(HusbandWife, "..//SRM-Textbook//Data//HusbandWife.csv")


InsulationBeforeAfter <- read.csv("data-raw/InsulationBeforeAfter.csv")
usethis::use_data(InsulationBeforeAfter, overwrite = TRUE)
write.csv(InsulationBeforeAfter, "..//SRM-Textbook//Data//InsulationBeforeAfter.csv")


Kerbside <- read.csv("data-raw/Kerbside.csv")
usethis::use_data(Kerbside, overwrite = TRUE)
write.csv(Kerbside, "..//SRM-Textbook//Data//Kerbside.csv")


KStones <- read.csv("data-raw/KStones.csv")
usethis::use_data(KStones, overwrite = TRUE)
write.csv(KStones, "..//SRM-Textbook//Data//KStones.csv")


Lime <- read.csv("data-raw/Lime.csv")
usethis::use_data(Lime, overwrite = TRUE)
write.csv(Lime, "..//SRM-Textbook//Data//Lime.csv", row.names = FALSE)


LungCap <- read.csv("data-raw/LungCap.csv")
usethis::use_data(LungCap, overwrite = TRUE)
write.csv(LungCap, "..//SRM-Textbook//Data//LungCap.csv", row.names = FALSE)


Lynx <- read.csv("data-raw/Lynx.csv")
usethis::use_data(Lynx, overwrite = TRUE)
write.csv(Lynx, "..//SRM-Textbook//Data//Lynx.csv")


Mandible <- read.csv("data-raw/Mandible.csv")
usethis::use_data(Mandible, overwrite = TRUE)
write.csv(Mandible, "..//SRM-Textbook//Data//Mandible.csv", row.names = FALSE)


##############################
### Exception: Processing needed
MaryRiver <- read.csv("data-raw/MaryRiver.csv")
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
usethis::use_data(MaryRiver, overwrite = TRUE)
write.csv(MaryRiver, "..//SRM-Textbook//Data//MaryRiver.csv", row.names = FALSE)
##############################


NMiner <- read.csv("data-raw/NMiner.csv")
NMiner <- data.frame( Eucs = NMiner$Eucs,
                      Minerab = NMiner$Minerab)
usethis::use_data(NMiner, overwrite = TRUE) # Just  Minerab  and  Eucs
write.csv(NMiner, "..//SRM-Textbook//Data//NMiner.csv", row.names = FALSE)


OSA <- read.csv("data-raw/OSA.csv")
usethis::use_data(OSA, overwrite = TRUE)
write.csv(OSA, "..//SRM-Textbook//Data//OSA.csv", row.names = FALSE)


Peas <- read.csv("data-raw/Peas.csv")
usethis::use_data(Peas, overwrite = TRUE)
write.csv(Peas, "..//SRM-Textbook//Data//Peas.csv")


Perm <- read.csv("data-raw/Perm.csv")
usethis::use_data(Perm, overwrite = TRUE)
write.csv(Perm, "..//SRM-Textbook//Data//Perm.csv", row.names = FALSE)


PetBirds <- read.csv("data-raw/PetBirds.csv")
usethis::use_data(PetBirds, overwrite = TRUE)
write.csv(PetBirds, "..//SRM-Textbook//Data//PetBirds.csv")


Placebos <- read.csv("data-raw/Placebos.csv")
usethis::use_data(Placebos, overwrite = TRUE)
write.csv(Placebos, "..//SRM-Textbook//Data//Placebos.csv")


##############################
### Exception: Processing needed
## Select bits from PossumsALL.csv
Possums <- read.csv("data-raw/PossumsALL.csv")
Possums <- dplyr::select(Possums,
                         Sex,
                         Wgt,
                         DEM)
usethis::use_data(Possums, overwrite = TRUE)
write.csv(Possums, "..//SRM-Textbook//Data//Possums.csv")
##############################


Punting <- read.csv("data-raw/Punting.csv")
usethis::use_data(Punting, overwrite = TRUE)
write.csv(Punting, "..//SRM-Textbook//Data//Punting.csv")


ReactionTimePhoneInd <- read.csv("data-raw/ReactionTimePhoneInd.csv")
usethis::use_data(ReactionTimePhoneInd, overwrite = TRUE)
write.csv(ReactionTimePhoneInd, "..//SRM-Textbook//Data//ReactionTimePhoneInd.csv")


RecoveryTime <- read.csv("data-raw/RecoveryTime.csv")
usethis::use_data(RecoveryTime, overwrite = TRUE)
write.csv(RecoveryTime, "..//SRM-Textbook//Data//RecoveryTime.csv")


RedDeer <- read.csv("data-raw/RedDeer.csv")
usethis::use_data(RedDeer, overwrite = TRUE)
write.csv(RedDeer, "..//SRM-Textbook//Data//RedDeer.csv", row.names = FALSE)


Removal <- read.csv("data-raw/Removal.csv")
usethis::use_data(Removal, overwrite = TRUE)
write.csv(Removal, "..//SRM-Textbook//Data//Removal.csv")


##############################
### Exception: Processing needed
Sanddollars <- read.csv("data-raw/Fertilization_data.csv")
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
          "..//SRM-Textbook//Data//Sanddollars.csv", row.names = FALSE)
##############################


ScarHeight <- read.csv("data-raw/ScarHeight.csv")
usethis::use_data(ScarHeight, overwrite = TRUE)
write.csv(ScarHeight, "..//SRM-Textbook//Data//ScarHeight.csv")


SDrink <- read.csv("data-raw/SDrink.csv")
usethis::use_data(SDrink, overwrite = TRUE)
write.csv(SDrink, "..//SRM-Textbook//Data//SDrink.csv", row.names = FALSE)



##############################
### Exception: Processing needed
Soils <- read.csv("data-raw/Soils.csv")
Soils <- dplyr::select(Soils,
                       Sample,
                       Gravel,
                       Sand,
                       Clay,
                       PI,
                       CBR)
usethis::use_data(Soils, overwrite = TRUE)
write.csv(Soils, "..//SRM-Textbook//Data//Soils.csv", row.names = FALSE)
##############################


SoilCN <- read.csv("data-raw/SoilCN.csv")
usethis::use_data(SoilCN, overwrite = TRUE)
write.csv(SoilCN, "..//SRM-Textbook//Data//SoilCN.csv")


Speed <- read.csv("data-raw/Speed.csv")
usethis::use_data(Speed, overwrite = TRUE)
write.csv(Speed, "..//SRM-Textbook//Data//Speed.csv")


Stress <- read.csv("data-raw/Stress.csv")
usethis::use_data(Stress, overwrite = TRUE)
write.csv(Stress, "..//SRM-Textbook//Data//Stress.csv", row.names = FALSE)


StudentWt <- read.csv("data-raw/StudentWt.csv")
usethis::use_data(StudentWt, overwrite = TRUE)
write.csv(StudentWt, "..//SRM-Textbook//Data//StudentWt.csv")


Throttle <- read.csv("data-raw/Throttle.csv")
usethis::use_data(Throttle, overwrite = TRUE)
write.csv(Throttle, "..//SRM-Textbook//Data//Throttle.csv", row.names = FALSE)


UniStudentsLong <- read.csv("data-raw/UniStudentsLong.csv")
usethis::use_data(UniStudentsLong, overwrite = TRUE)
write.csv(UniStudentsLong, "..//SRM-Textbook//Data//UniStudentsLong.csv")


Windmill <- read.csv("data-raw/Windmill.csv")
usethis::use_data(Windmill, overwrite = TRUE)
write.csv(Windmill, "..//SRM-Textbook//Data//Windmill.csv", row.names = FALSE)


YieldDen <- read.csv("data-raw/YieldDen.csv")
usethis::use_data(YieldDen, overwrite = TRUE)
write.csv(YieldDen, "..//SRM-Textbook//Data//YieldDen.csv", row.names = FALSE)


#####################################################################################
# Now produce the man (.Rd) files
roxygen2::roxygenise()
