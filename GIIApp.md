Global Innovation Index Shiny App
========================================================
author: 
date: 20/12/2014
transition: rotate
width: 1024

Innovation is Hot!
========================================================
<br>
<ul>
<li>All over the media

<li>We are all innovators nowadays!

<li>Different types of innovation: 

<ul><ul>
<li>Social innovation
<li>Frugal inovation
<li>Digital innovation
<li>You name it!
</ul></ul>

<li>But we have a low "signal to noise ratio"...
</ul>

 We need to know more, for sure
========================================================
<ul>
<li>How do we measure innovation?
<li>How about traditional innovation related to traditional R&D?
<li>What about comparing innovation across countries?
<li>Can we also include emerging economies?
</ul>

<br>
<b>Yes, we can do all that stuff!</b>
<br>
<b>Thanks to the Global Innovation Index, GII!</b>
<ul>
<li>Co-published by Cornell University, INSEAD and WIPO
<li>Contains rankings for 143 countries
<li>Goes beyond traditional R&D investments
<li>Has been around for the last 7 years
</ul>

How does the data look like?
========================================================
<li>Since you asked, here is a sample:
<small>

```r
innov <- read.csv("./GlobalInnovationIndex2014.csv", as.is=c(1:2, 6:9))
innov <- innov[,c(-2, -4, -6:-9, -11:-13, -15:-17)]
names(innov) <- c("Country", "Population", "GDPperCap", "Rank", "Score")
str(innov)
```

```
'data.frame':	143 obs. of  5 variables:
 $ Country   : chr  "Switzerland" "United Kingdom" "Sweden" "Finland" ...
 $ Population: num  7997 63228 9517 5414 16768 ...
 $ GDPperCap : num  46430 37307 41188 35617 41711 ...
 $ Rank      : int  1 2 3 4 5 6 7 8 9 10 ...
 $ Score     : num  64.8 62.4 62.3 60.7 60.6 ...
```
</small>
Want to know more?
======================================================
<h4>Sure you do!</h4>

<ul>
<li>How is my country doing?
<li>How about next door countries?
<li>Who is leading the pack?
<li>Hmm, and who is sitting at the bottom of the innovation pyramid?
</ul>

<br>
<h4>You got it! Check the GII shiny App here: <br><br>

https://raul.shinyapps.io/courseProj/</h4><p>
