### code to prepare `DATASET` dataset goes here
### See: https://r-pkgs.org/data.html

library(usethis) # To save things and so on
library(foreign) # To load SPSS (.sav) files
library(dplyr) # For selecting variables

###########################################################################
# First, load and convert SPSS files into .csv files

# Load names of csv data files
csvFileList <- list.files(path = "data-raw/", # Load .csv data files list
                          full.names = TRUE,
                          pattern = "*.csv")

# Now extract bit *without* the  ".csv"
csvNumFiles <- length(csvFileList)
cat("* Processing (csv):")
for (i in (1:csvNumFiles)) {
  cat(".")
  csvFileList[i] <- substr(x = csvFileList[i],
                           start = 1,
                           stop = nchar(csvFileList[i]) - 4 )
}
cat("Done: ", length(csvFileList), " .csv files\n")


# Load names of sav data files
savFileList <- list.files(path = "data-raw/", # Load .sav data files list
                          full.names = TRUE,
                          pattern = "*.sav")

# Now extract bit *without* the  ".sav"
savNumFiles <- length(savFileList)
cat("* Processing (sav):")
for (i in (1:savNumFiles)) {
  cat(".")
  savFileList[i] <- substr(x = savFileList[i],
                           start = 1,
                           stop = nchar(savFileList[i]) - 4 )
}
cat("Done: *", length(savFileList), " .sav files\n")

### A list of the  .sav  files not available as csv yet:
onlyAsSPSS <- savFileList[ !(savFileList %in% csvFileList) ]
cat("*", length(onlyAsSPSS), " files only appear as SPSS files; converting to .csv\n")


# Now load these, and save as  csv  files
if ( length(onlyAsSPSS) > 0) {
  for (i in (1:length(onlyAsSPSS))) {
    # Load the  sav  file
    savDataFile <- read.spss( paste0( onlyAsSPSS[i], ".sav"),
                              to.data.frame = TRUE) # Loaded as "dataFile", so rename
    # Save as a  csv  file
    write.csv(x = savDataFile,
              file = paste0( onlyAsSPSS[i], ".csv"))

  }
  cat("* Copy csv files to textbook Data directory\n")
} else {
  cat("* No files just exist as SPSS; no conversions needed\n")
}


###########################################################################
# Now, we can save all the csv files and RData files
# - Load names of data files
# - Process if needed
# - Save as rda
# - Save as .csv in the Textbook Data/ directory

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


Dental <- read.csv("data-raw/Dental.csv")
usethis::use_data(Dental, overwrite = TRUE)
write.csv(Dental, "..//SRM-Textbook//Data//Dental.csv")


Diabetes <- read.csv("data-raw/Diabetes.csv")
usethis::use_data(Diabetes, overwrite = TRUE)
write.csv(Diabetes, "..//SRM-Textbook//Data//Diabetes.csv")


Dogs <- read.csv("data-raw/Dogs.csv")
usethis::use_data(Dogs, overwrite = TRUE)
write.csv(Dogs, "..//SRM-Textbook//Data//Dogs.csv")


EDpatients <- read.csv("data-raw/EDpatients.csv")
usethis::use_data(EDpatients, overwrite = TRUE)
write.csv(EDpatients, "..//SRM-Textbook//Data//EDpatients.csv")


EmeraldAug <- read.csv("data-raw/EmeraldAug.csv")
usethis::use_data(EmeraldAug, overwrite = TRUE)
write.csv(EmeraldAug, "..//SRM-Textbook//Data//EmeraldAug.csv")


Ferritin <- read.csv("data-raw/Ferritin.csv")
usethis::use_data(Ferritin, overwrite = TRUE)
write.csv(Ferritin, "..//SRM-Textbook//Data//Ferritin.csv")


ForwardFall <- read.csv("data-raw/ForwardFall.csv")
usethis::use_data(ForwardFall, overwrite = TRUE)
write.csv(ForwardFall, "..//SRM-Textbook//Data//ForwardFall.csv")


##############################
        ### Exception: Processing needed
Sanddollars <- read.csv("data-raw/Fertilization_data.csv")
Sanddollars <- dplyr::select(Sanddollars,
                             SD.temperatures,
                             SD.fertilization,
                             SD.speeds,
                             SD.motility)
usethis::use_data(Sanddollars,
                  overwrite = TRUE)
write.csv(Sanddollars,
          "..//SRM-Textbook//Data//Sanddollars.csv")


Gorillas <- read.csv("data-raw/Gorillas.csv")
usethis::use_data(Gorillas, overwrite = TRUE)
write.csv(Gorillas, "..//SRM-Textbook//Data//Gorillas.csv")


HatSunglasses <- read.csv("data-raw/HatSunglasses.csv")
usethis::use_data(HatSunglasses, overwrite = TRUE)
write.csv(HatSunglasses, "..//SRM-Textbook//Data//HatSunglasses.csv")


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


Lynx <- read.csv("data-raw/Lynx.csv")
usethis::use_data(Lynx, overwrite = TRUE)
write.csv(Lynx, "..//SRM-Textbook//Data//Lynx.csv")


MaryRiver <- read.csv("data-raw/MaryRiver.csv")
usethis::use_data(MaryRiver, overwrite = TRUE)
write.csv(MaryRiver, "..//SRM-Textbook//Data//MaryRiver.csv")


OSA <- read.csv("data-raw/OSA.csv")
usethis::use_data(OSA, overwrite = TRUE)
write.csv(OSA, "..//SRM-Textbook//Data//OSA.csv")


Peas <- read.csv("data-raw/Peas.csv")
usethis::use_data(Peas, overwrite = TRUE)
write.csv(Peas, "..//SRM-Textbook//Data//Peas.csv")


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
write.csv(RedDeer, "..//SRM-Textbook//Data//RedDeer.csv")


Removal <- read.csv("data-raw/Removal.csv")
usethis::use_data(Removal, overwrite = TRUE)
write.csv(Removal, "..//SRM-Textbook//Data//Removal.csv")


ScarHeight <- read.csv("data-raw/ScarHeight.csv")
usethis::use_data(ScarHeight, overwrite = TRUE)
write.csv(ScarHeight, "..//SRM-Textbook//Data//ScarHeight.csv")



        ##############################
        ### Exception: Processing needed
Soils <- read.csv("data-raw/Soils.csv")
Soils <- dplyr::select(Soils,
                       Sample,
                       Gravel,
                       Sand,
                       Clay,
                       CBR)


Speed <- read.csv("data-raw/Speed.csv")
usethis::use_data(Speed, overwrite = TRUE)
write.csv(Speed, "..//SRM-Textbook//Data//Speed.csv")


Stress <- read.csv("data-raw/Stress.csv")
usethis::use_data(Stress, overwrite = TRUE)
write.csv(Stress, "..//SRM-Textbook//Data//Stress.csv")


StudentWt <- read.csv("data-raw/StudentWt.csv")
usethis::use_data(StudentWt, overwrite = TRUE)
write.csv(StudentWt, "..//SRM-Textbook//Data//StudentWt.csv")


Throttle <- read.csv("data-raw/Throttle.csv")
usethis::use_data(Throttle, overwrite = TRUE)
write.csv(Throttle, "..//SRM-Textbook//Data//Throttle.csv")


UniStudentsLong <- read.csv("data-raw/UniStudentsLong.csv")
usethis::use_data(UniStudentsLong, overwrite = TRUE)
write.csv(UniStudentsLong, "..//SRM-Textbook//Data//UniStudentsLong.csv")



cat("Done\n")
