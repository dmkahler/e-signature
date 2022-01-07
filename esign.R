#!/usr/bin/env Rscript
desc <- commandArgs(trailingOnly=TRUE)
if (length(d)==0) {
     desc <- "no description provided"
} else {
     desc <- d[1]
}

used <- read.table("verificationlog.csv", sep = ",", skip = 1)

library(png)
sig <- png::readPNG("kahler_sig.png")
name <- "David M. Kahler"
signingTime <- Sys.time()
ver <- abs(round((10^12)*rnorm(1)))
hash <- "ERROR" # error flag if there is no unique hash generated.
unique <- 0
for (j in 1:100) { # tries 100 times to generate a unique verification hash.
     for (i in nrow(used)) {
          if (used$V1[i] == ver) {
               ver <- abs(round((10^12)*rnorm(1)))
               break # breaks to check again
          }
          if (i == nrow(used)) {
               unique <- 1 # only if it gets to the end without resetting ver
          }
     }
     if (unique==1) {
          hash <- ver
          break # stops trials
     }
}

filename <- paste0("kahler_",hash,".png")
png(filename, width = 600, height = 150) # this file was set to be at 300dpi, 4 in by 0.5 in.
par(mar=c(0,0,0,0))
plot(c(0, 1), c(0, 1), ann = F, bty = 'n', type = 'n', xaxt = 'n', yaxt = 'n')
grid::grid.raster(sig)
text(x = 0.55, y = 0.9, paste("Electronically signed by:"), cex = 1, col = "black", family="sans", font=1, adj=0)
text(x = 0.55, y = 0.75, paste(name), cex = 2, col = "black", family="sans", font=1, adj=0)
text(x = 0.55, y = 0.6, paste(format(signingTime, "%d %b %Y, %H:%M %Z")), cex = 1, col = "black", family="sans", font=1, adj=0)
text(x = 0.55, y = 0.5, paste("Verification: ",hash), cex = 1, col = "black", family="sans", font=1, adj=0)
text(x = 0.55, y = 0.4, paste("dmkahler.github.io/esign.html"), cex = 1, col = "black", family="sans", font=1, adj=0)
dev.off()

out <- data.frame(ver, signingTime, desc)
write.table(out, file="verificationlog.csv", append = TRUE, sep = ",", row.names = FALSE, col.names = FALSE)
