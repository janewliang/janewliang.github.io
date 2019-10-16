library(qrencoder)


# Generate QR code for website
png("../media/qrcode.png")
par(mar=c(3,3,3,3))
image(qrencode_raster("https://janewliang.github.io"), 
      asp=1, col=c("white", "black"), axes=FALSE, xlab="", ylab="")
dev.off()


# Generate QR code for matrix linear models page
png("../media/qrcode_mlm.png")
par(mar=c(3,3,3,3))
image(qrencode_raster("https://janewliang.github.io/mlm"), 
      asp=1, col=c("white", "black"), axes=FALSE, xlab="", ylab="")
dev.off()
