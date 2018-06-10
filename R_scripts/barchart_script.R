df <- read.csv('data.csv')

colnames(df)[colnames(df)=="Kanye.dataset"] <- "album_name"

# CD 2004
# LR 2005
# Graduation 2007
# 808s 2008
# MBDTF 2010
# Yeezus 2013
# TLOP 2016

# we want to add a new column called release year associated with each album
df$release_year[df$album_name=="College Dropout"] <- "2004"
df$release_year[df$album_name=="Late Registration"] <- "2005"
df$release_year[df$album_name=="Graduation"] <- "2007"
df$release_year[df$album_name=="808s & Heartbreak"] <- "2008"
df$release_year[df$album_name=="My Beautiful Dark Twisted Fantasy"] <- "2010"
df$release_year[df$album_name=="Yeezus"] <- "2013"
df$release_year[df$album_name=="The Life of Pablo"] <- "2016"

        
             


library(ggplot2)
# Automatic levels
ggplot(df, aes(factor(album_name))) + geom_bar()    


# Manual levels
ry_table <- table(df$release_year) # rlease year table
ry_levels <- c("2004", "2005", "2007", "2008", "2010", "2013", "2016")
# Just to be clear, the above line is no different than:
df$newcol <- factor(df$album_name, levels = c("2004", "2005", "2007", "2008", "2010", "2013", "2016"))
# You can manually set the levels in whatever order you please. 

qplot(reorder(factor(release_year),factor(release_year),length),data=df,geom="bar")


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

