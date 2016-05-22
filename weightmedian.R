weightmedian <- function(directory, day){
   
   files <- list.files("diet_data", full.names = TRUE)
   
   dat <- data.frame()
   for(j in 1:5){
      dat <- rbind(dat, read.csv(files[j]))
   }
   
   dat_subset <- dat[which(dat[, "Day"] == day), ]
   median(dat_subset[, "Weight"], na.rm = TRUE)
}