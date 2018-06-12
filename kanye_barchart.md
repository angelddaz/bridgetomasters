# <a href="https://angelddaz.github.io/bridgetomasters/"> Home </a>

# In which I spend ridiculous amounts of time trying to create a single bar chart


### How this started:
I made a <a href="https://github.com/angelddaz/bridgetomasters/blob/master/collect_data.md"> Data Collection Video </a> in which I explained a great way to collect your own data. I stole this idea of using Google Forms from Hilary Parker of StitchFix. I bookmarked this survey and whenever I remembered to submit an answer, I would record how I felt at any given time. Each Kanye West album has a different mood; i.e. *808s & Heartbreak* is deeply melancholic and introspective. *Yeezus* is the musical embodiment of a chip on your shoulder - a black hole of insecurity and rage.

So I ended up submitting an answer 64 times but my submissions were wildly inconsistent. I knew I couldn't do an analysis grouping by time of submissions or weekly, or anything like that. So I figured a bar chart of counts would best serve my needs on this programming project. With a bar chart, I covered so much ground; data collection, x axis ordering, dplyr, co-opting other people's tools, asking questions on community.rstudio.com, etc.

### Here is the <a href="https://github.com/angelddaz/bridgetomasters/blob/master/R_scripts/ye_dev/barchart_script.R"> complete script </a> which is done for now

## Main takeways:
* Choose projects that mean something to you first, and mean something to other people second.
* "Steal" openly available tools for your projects
* Ask questions and you'll be exposed to cool new stuff

### Code I wanted to point out. A walkthrough of sorts with 6 bullet points.

1. Using a URL instead of local CSV file allowed me to ask this question on <a href="https://community.rstudio.com/t/how-to-manually-order-x-axis-on-bar-chart/9601RStudio" RStudio Community </a>. I uploaded the CSV in GitHub and viola, you can use it in your script.
```r
df <- read.csv(url('https://raw.githubusercontent.com/angelddaz/bridgetomasters/master/CSVs/ye_data.csv'))
```
2. Scripting the ordering of levels used in bar chart ordering. These lines were a bit tricky to figure out but I'm glad I did. Assigning a release year to each unique album and then ordering by that unique year allowed me to pass in a variable into the mutate function rather than hard coding it. No worries, I have a few hard coded lines in this script.

```r
levels <- unique(df$album_name)
levels <- as.data.frame(levels)

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
```


3. Thank you to Tyler Bradley for these three lines. It allowed me to order the bar chart through the levels made in the code above 
```r
df %>% 
  dplyr::mutate(album_name = factor(album_name, levels = levels)) %>% 
  ggplot(aes(album_name)) + geom_bar()
```

4. <a href="https://davidrroberts.wordpress.com/2016/01/21/tabulate-hexadecimal-colours-from-rgb-image-bands-in-r/"> Tool </a> from David Roberts allowed me to create some of my most favorite results from this project. Color pallettes from some of my favorite Kanye albums.
#### College Dropout
![](https://github.com/angelddaz/bridgetomasters/blob/master/R_scripts/ye_dev/CD_RGB.png)
#### Late Registration
![](https://github.com/angelddaz/bridgetomasters/blob/master/R_scripts/ye_dev/LR_RGB.png)
#### Graduation
![](https://github.com/angelddaz/bridgetomasters/blob/master/R_scripts/ye_dev/Graduation_RGB.png)

5. This <a href="https://davidrroberts.wordpress.com/2016/01/21/tabulate-hexadecimal-colours-from-rgb-image-bands-in-r/"> tool </a> also created CSVs of the RGB breakdown and I selecting values from CSVs is a common data wrangling task. I had to manually reorder the list of CSVs so that it would match the release year order. 
* There are several ways to automate this I could think of; changing the make.rgb.fun function so that it adds a sequential (0, 1, 2, ... , n) number in front of each CSV so that the ```list <- Sys.glob("*_RGB_Table.csv")``` line could maybe grab them in order.

```r
get_color <- function(csv) {
    colordf <- read.csv(csv)
    colordf <- as.character(head(colordf[1,1]))
}


list <- Sys.glob("*_RGB_Table.csv")
print(list)
# I'm going to reorder the values here because this the current order
# > print(list)
# [1] "CD_RGB_Table.csv"         "Graduation_RGB_Table.csv" "LR_RGB_Table.csv"         "MBDTF_RGB_Table.csv"     
# [5] "TLOP_RGB_Table.csv"       "Yeezus_RGB_Table.csv"     "eights_RGB_Table.csv"

# doing this manually "for now"
list <- c("CD_RGB_Table.csv", "LR_RGB_Table.csv", "Graduation_RGB_Table.csv",
          "eights_RGB_Table.csv", "MBDTF_RGB_Table.csv", 
          "Yeezus_RGB_Table.csv", "TLOP_RGB_Table.csv")
colors <- lapply(list, get_color)
colors <- c(colors)
```
6. Finally, I just pass in the colors variable, which is a list of 7 hex values into the dplyr bar chart lines.
```r
df %>% 
  dplyr::mutate(album_name = factor(album_name, levels = levels)) %>% 
  ggplot(aes(album_name)) + geom_bar(fill=colors, colour="black") + ggtitle("Number of Times I felt like a Kanye Album")
```
I get this final result:
![](https://github.com/angelddaz/bridgetomasters/blob/master/R_scripts/ye_dev/final_bar_chart.png)

### Finally, what does this say about my moods when I submitted to the Google Forms
808s and heartbreak is the <a href="https://www.youtube.com/watch?v=semrAAeRlworunaway"> runaway </a> winner here. Which would tell me that I am a sad boi who is often melancholic and retrospective. Or maybe I am merely confirming what I believe to be true :). I also often have a chip on my shoulder, therefore, Yeezus is in second place. Last place is My Beautiful Dark Twisted Fantasy, although arguably Kanye's greatest masterpiece, I don't often have beautiful dark twisted fantasies. 

## Main takeways:
* Choose projects that mean something to you first, and mean something to other people second.
* "Steal" openly available tools for your projects
* Ask questions and you'll be exposed to cool new stuff


Notes:
* color extract tool: https://davidrroberts.wordpress.com/2016/01/21/tabulate-hexadecimal-colours-from-rgb-image-bands-in-r/
