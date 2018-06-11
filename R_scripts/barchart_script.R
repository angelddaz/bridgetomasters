df <- read.csv(url('https://raw.githubusercontent.com/angelddaz/bridgetomasters/master/CSVs/ye_data.csv'))

colnames(df)[colnames(df)=="Kanye.dataset"] <- "album_name"


levels <- unique(df$album_name)
levels <- as.data.frame(levels)

# we want to add a new column called release year associated with each album
levels$release_year[levels$levels=="College Dropout"] <- "2004"
levels$release_year[levels$levels=="Late Registration"] <- "2005"
levels$release_year[levels$levels=="Graduation"] <- "2007"
levels$release_year[levels$levels=="808s & Heartbreak"] <- "2008"
levels$release_year[levels$levels=="My Beautiful Dark Twisted Fantasy"] <- "2010"
levels$release_year[levels$levels=="Yeezus"] <- "2013"
levels$release_year[levels$levels=="The Life of Pablo"] <- "2016"

levels <- transform(levels, release_year = as.numeric(release_year)) # changing to numeric so I can sort
levels <- levels[order(levels$release_year),]
levels <- levels$levels # changing to a single vector to pass into dplyr mutate function

library(ggplot2)
library(dplyr)

# the following 3 lines of code were given to me by Tyler Bradley here: https://community.rstudio.com/t/how-to-manually-order-x-axis-on-bar-chart/9601
df %>% 
  dplyr::mutate(album_name = factor(album_name, levels = levels)) %>% 
  ggplot(aes(album_name)) + geom_bar()


# downloading album artwork
CD <- "https://upload.wikimedia.org/wikipedia/en/thumb/a/a3/Kanyewest_collegedropout.jpg/220px-Kanyewest_collegedropout.jpg"
LR <- "https://upload.wikimedia.org/wikipedia/en/thumb/f/f4/Late_registration_cd_cover.jpg/220px-Late_registration_cd_cover.jpg"
Graduation <- "https://upload.wikimedia.org/wikipedia/en/thumb/7/70/Graduation_%28album%29.jpg/220px-Graduation_%28album%29.jpg"
eights <- "https://upload.wikimedia.org/wikipedia/en/thumb/f/f1/808s_%26_Heartbreak.png/220px-808s_%26_Heartbreak.png"
MBDTF <- "https://upload.wikimedia.org/wikipedia/en/thumb/f/f0/My_Beautiful_Dark_Twisted_Fantasy.jpg/220px-My_Beautiful_Dark_Twisted_Fantasy.jpg"
Yeezus <- "https://upload.wikimedia.org/wikipedia/en/thumb/0/03/Yeezus_album_cover.png/220px-Yeezus_album_cover.png"
TLOP <- "https://upload.wikimedia.org/wikipedia/en/thumb/4/4d/The_life_of_pablo_alternate.jpg/220px-The_life_of_pablo_alternate.jpg"

download.file(CD,'CD.jpg', mode = 'wb')
download.file(LR,'LR.jpg', mode = 'wb')
download.file(Graduation,'Graduation.jpg', mode = 'wb')
download.file(eights,'808s.jpg', mode = 'wb')
download.file(MBDTF,'MBDTF.jpg', mode = 'wb')
download.file(Yeezus,'Yeezus.jpg', mode = 'wb')
download.file(TLOP,'TLOP.jpg', mode = 'wb')

# Now I will use the following tool to get the most common colors from each album cover
# https://davidrroberts.wordpress.com/2016/01/21/tabulate-hexadecimal-colours-from-rgb-image-bands-in-r/

# Required packages
library('raster')
library('jpeg')
library('colorspace')
library('plyr')



# Directory title (must be in the working directory)
name <- "ye"

# Path to images (also the output path for tables & images)
filepath <- paste(name,"/",sep="")

# List of image files (will be used to name outputs)
image.list <- list.files(filepath,pattern="*.jpg")
image.list <- substr(image.list,1,nchar(image.list)-4)

## FUNCTION ##
make.rgb.fun <- function(jpeg, round.dig, n.col){
  # Image must have a .jpg extension (NOT .jpeg)
  # jpeg = file name of image (without the .jpg extension)
  # round.dig = number of digits to round RGB values to (more = more unique but similar colours)
  # n.col = number of unique colour to plot 
  
  # Import image
  img <- readJPEG(paste(filepath,jpeg,".jpg",sep=""))
  
  # Extract RGB layers
  # Note the rounding of the RGB values
  img.R <- round(img[,,1],1) # RED
  img.G <- round(img[,,2],1) # GREEN
  img.B <- round(img[,,3],1) # BLUE
  
  # Make unique colours
  rgb <- hex(RGB(c(img.R),c(img.G),c(img.B)))
  rgb.tab <- as.data.frame(table(rgb))
  rgb.tab <- rgb.tab[order(-rgb.tab[2]),]
  rgb.tab$Prop <- round(rgb.tab$Freq/sum(rgb.tab$Freq),5)
  rgb.tab[1:10,]; dim(rgb.tab)
  cols <- as.character(rgb.tab[1:n.col,1])
  
  # Save hex colour table
  write.csv(rgb.tab, paste(filepath,jpeg,"_RGB_Table.csv",sep=""), row.names=F)
  
  # Plot
  graphics.off(); x11(w=12,h=5)
  layout.show(6)
  par(mfrow=c(2,4), mar=c(1,1,1,1))
  image(t(img.R[nrow(img.R):1L,]),axes=F, col=colorRampPalette(c("white","red"))(10))
  image(t(img.G[nrow(img.G):1L,]),axes=F, col=colorRampPalette(c("white","green"))(10))
  image(t(img.B[nrow(img.B):1L,]),axes=F, col=colorRampPalette(c("white","blue"))(10))
  plot(1:100,1:100,type="n",axes=F,ann=F); rasterImage(img,1,1,100,100)
  par(mar=c(5,5,1,1))
  hist(img.R, breaks=12, col="pink", xlab="RED", ylab="", las=1, main="")
  hist(img.G, breaks=12, col="darkolivegreen1", xlab="GREEN", ylab="", las=1, main="")
  hist(img.B, breaks=12, col="lightblue", xlab="BLUE", ylab="", las=1, main="")
  par(mar=c(8,1,1,1))
  barplot(rep(n.col,n.col), col=cols, axes=F, names.arg=cols, las=2)
  savePlot(paste(filepath,jpeg,"_RGB.png",sep=""),type="png")
}

# Run the function for the image list
# Rounds to 1 decimal, 15 colour output
lapply(image.list, make.rgb.fun, 1, 15)
