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
unique <- 0
for (j in 1:100) { # tries 100 times to generate a unique verification hash.
     print("j")
     print(j)
     for (i in nrow(used)) {
          print("i")
          print(i)
          if (used$V1[i] == ver) {
               ver <- abs(round((10^12)*rnorm(1)))
               print("resetting ver")
               break
          }
          if (i == nrow(used)) {
               unique <- 1
          }
     }
     if (unique==1) {
          print("unique pass")
          break
     }
     print("checking again")
}

par(mar=c(0,0,0,0))
plot(c(0, 1), c(0, 1), ann = F, bty = 'n', type = 'n', xaxt = 'n', yaxt = 'n')
grid::grid.raster(sig)
text(x = 0.58, y = 0.63, paste("Electronically signed by:"), cex = 1, col = "black", family="sans", font=1, adj=0)
text(x = 0.58, y = 0.57, paste(name), cex = 2, col = "black", family="sans", font=1, adj=0)
text(x = 0.58, y = 0.51, paste(format(signingTime, "%d %b %Y, %H:%M %Z")), cex = 1, col = "black", family="sans", font=1, adj=0)
text(x = 0.58, y = 0.47, paste("Verification: ",ver), cex = 1, col = "black", family="sans", font=1, adj=0)
text(x = 0.58, y = 0.43, paste("dmkahler.github.io/esign.html"), cex = 1, col = "black", family="sans", font=1, adj=0)


out <- data.frame(ver, signingTime, desc)
write.table(out, file="verificationlog.csv", append = TRUE, sep = ",", row.names = FALSE, col.names = FALSE)
