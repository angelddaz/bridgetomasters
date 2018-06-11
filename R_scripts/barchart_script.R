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


# the following 3 lines of code were given to me by Tyler Bradley here:
# https://community.rstudio.com/t/how-to-manually-order-x-axis-on-bar-chart/9601
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
