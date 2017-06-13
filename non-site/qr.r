library(qrencoder)

# Website URL
url = "https://janewliang.github.io"

# Generate QR code for website
png("../assets/qrcode.png")
par(mar=c(3,3,3,3))
image(qrencode_raster(url), 
      asp=1, col=c("white", "black"), axes=FALSE, xlab="", ylab="")
dev.off()
