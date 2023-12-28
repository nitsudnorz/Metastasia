library(plotrix)
library(unikn)

##exporter
pdf("~/Desktop/METASTASIETEST2.pdf", width = 10.0, height = 7,
    onefile = TRUE, encoding = "TeXtext.enc")

###write cuenumber on plot

setup <- function(x, y){
  par(mfcol=c(1,1), mai = c(0.7, 1, 0, 0.4), omi = c(0.2, 0, 0.5, 0), cex = 0.5) # papiergröße
  start = x
  end = y
  number_distance = 1
}



drawpage <- function (nr,beg, end)
{
  setup (beg, end)
  plotter(beg, end)
  mtext("Metastasie Dustin Zorn",                     # Add Titel manually
        side = 3,
        line = 2,
        cex = 2
  )
  mtext(nr,                     # Add Pagenumber manually
        side = 3,
        line = 2,
        cex = 0.5,
        adj=1
  )
}

setup(0,1000)



plotter <- function(start, end){
  plot(x = 1,  
       xlab = "", # axis lable 
       ylab = "",
       xlim = c(start, end+1), 
       ylim = c(0, 50), # axis size
       xaxs = "i",
       yaxs = "i",
       main = "",
       type = "n",
       yaxt = "n",
       xaxt = "n")
  par(cex.axis=0.5)
  axis(2, at = c(50-0:4*0.5-0.4), las = 2, line = 0.6, labels = c(
    #tables L
    "kndx",
    "ifn1",
    "iamp",
    "ifn4",
    "idifb"
  ), tick = FALSE)
  axis(2, at = c(50-0:3*0.5-0.9), las = 2, line = -0.9, labels = c(
    #tables R
    "ifn2",
    "isk",
    "ifn4",
    "idifb"
  ), tick = FALSE)
  
  
  
  axis(2, at = c(46-0:2*0.5-0.2), las = 2, line = 0.6, labels = c(
    #synth param L
    "imag",
    "ifma",
    "indxa"
  ), tick = FALSE)
  axis(2, at = c(46-0:2*0.5-0.2), las = 2, line = -0.9, labels = c(
    #synth param R
    "ifc",
    "ifmb",
    "indxb"
  ), tick = FALSE)
  
  
  axis(2, at = c(43-0:3*0.5-0.2), las = 2, line = 0.6, labels = c(
    #reverb L
    "rev",
    "idis",
    "arevsc",
    "ch1 ch2"
  ), tick = FALSE)
  axis(2, at = c(43-3*0.5-0.2), las = 2, line = -0.9, labels = c(
    #reverb R
    "ch3 ch4"
  ), tick = FALSE)
  
  
  
  axis(2, at = c(50-19*0.5-0.2), las = 2, line = 0.6, labels = c(
    #mastervol L
    "ch1 ch2"
  ), tick = FALSE)
  axis(2, at = c(50-19*0.5-0.2), las = 2, line = -0.9, labels = c(
    #mastervol R
    "ch3 ch4"
  ), tick = FALSE)
  
  par(cex.axis=2)
  axis(3, at = (start:end) , las = 1, labels = start:end, tick = TRUE , line = 0 , font = 2, hadj = -0.2, padj = 1)
  
  fader_lines <- c(1, 2, 3, 4, 6, 7, 8, 9)
 # abline(h = fader_lines, col = "grey", lty = "dashed")
  abline(h = 10, col = "black")
  abline(h = 20, col = "black")
  abline(h = 30, col = "black")
  abline(h = 40, col = "black")
  mtext("Engine5",                     # Add title manually
        side = 2,
        line = 2,
        las = 2,
        at = 5,
        cex = 0.8,
        font = 3)
  mtext("Engine4",                     # Add title manually
        side = 2,
        line = 2,
        las = 2,
        at = 15,
        cex = 0.8,
        font = 3)
  mtext("Engine3",                     # Add title manually
        side = 2,
        line = 2,
        las = 2,
        at = 25,
        cex = 0.8,
        font = 3)
  mtext("Engine2",                     # Add title manually
        side = 2,
        line = 2,
        las = 2,
        at = 35,
        cex = 0.8,
        font = 3)
  mtext("Engine1",                     # Add title manually
        side = 2,
        line = 5,
        las = 2,
        at = 45,
        cex = 0.6,
        font = 3)
  mtext("Reverb",                     # Add title manually
        side = 2,
        line = 5,
        las = 2,
        at = 43,
        cex = 0.4,
        font = 3,
        adj = 0)
  mtext("Tables",                     # Add title manually
        side = 2,
        line = 5,
        las = 2,
        at = 48,
        cex = 0.4,
        font = 3,
        adj = 0)
  mtext("Synth",                     # Add title manually
        side = 2,
        line = 5,
        las = 2,
        at = 46,
        cex = 0.4,
        font = 3,
        adj = 0)
  mtext("OscTable",                     # Add title manually
        side = 2,
        line = 5,
        las = 2,
        at = 44.5,
        cex = 0.4,
        font = 3,
        adj = 0)
  mtext("Master",                     # Add title manually
        side = 2,
        line = 5,
        las = 2,
        at = 41,
        cex = 0.4,
        font = 3,
        adj = 0)
  f (1,0,0.5,0.5,49, 0.8)
  f (2,0.5,1,0.5,49, 0.8)
  f (8,0,0.5,0.5,48, 0.8)
  f (5,0.5,1,0.5,48, 0.8)
  steps = c(1:10)
  for (l in steps){
    abline(v = steps, col = "grey", lty = "dashed")
  	}
}


drawpage(1, 0, 10)
### Textboxes Mastervol
textbox(c(0,0.25), 40.4, c("Preset=100"), cex=0.4, justify = l, lwd = 0.2,
        col="black", border="black", margin = 0, box = 1,adj = c(-0.1,0.3))
textbox(c(0.25,0.5), 40.4, c("Preset=100"), cex=0.4, justify = l,lwd = 0.2,
        col="black", border="black", margin = 0, box = 1,adj = c(-0.1,0.3))
textbox(c(0.5,0.75), 40.4, c("Preset=100"), cex=0.4, justify = l,lwd = 0.2,
        col="black", border="black", margin = 0, box = 1,adj = c(-0.1,0.3))
textbox(c(0.75,1), 40.4, c("Preset=100"), cex=0.4, justify = l,lwd = 0.2,
        col="black", border="black", margin = 0, box = 1,adj = c(-0.1,0.3))

### Textboxes Reverbout
textbox(c(0,0.25), 40.9, c("Preset=100"), cex=0.4, justify = l, lwd = 0.2,
        col="black", border="black", margin = 0, box = 1,adj = c(-0.1,0.3))
textbox(c(0.25,0.5), 40.9, c("Preset=100"), cex=0.4, justify = l,lwd = 0.2,
        col="black", border="black", margin = 0, box = 1,adj = c(-0.1,0.3))
textbox(c(0.5,0.75), 40.9, c("Preset=100"), cex=0.4, justify = l,lwd = 0.2,
        col="black", border="black", margin = 0, box = 1,adj = c(-0.1,0.3))
textbox(c(0.75,1), 40.9, c("Preset=100"), cex=0.4, justify = l,lwd = 0.2,
        col="black", border="black", margin = 0, box = 1,adj = c(-0.1,0.3))

##textbox kndx
textbox(c(0,1), 50, c("Preset = 0.2"), cex=0.5, justify = l, lwd = 0.2,
        col="black", border="black", margin = 0, box = 1,adj = c(-0.1,0.3))

### textboxtables
textbox(c(0,0.5), 49, c("Preset = 0.5"), cex=0.5, justify = l, lwd = 0.2,
        col="black", border="black", margin = 0, box = 1,adj = c(-0.1,0.3))
textbox(c(0.5,1), 49, c("Joystick-x = 0-1"), cex=0.5, justify = l,lwd = 0.2,
        col="black", border="black", margin = 0, box = 1,adj = c(-0.1,0.3))

textbox(c(0,0.5), 48, c("Preset=100"), cex=0.5, justify = l, lwd = 0.2,
        col="black", border="black", margin = 0, box = 1,adj = c(-0.1,0.3))
textbox(c(0.5,1), 48, c("Preset=100"), cex=0.5, justify = l,lwd = 0.2,
        col="black", border="black", margin = 0, box = 1,adj = c(-0.1,0.3))


dev.off()


###table functionsdraw
getx <- function (x)
{
  switch(x, 
         {xx <- c(0:16383)},
         {xx <- c(0, 4096, 8192, 12288, 16384, 0)}, 
         {xx <- c(0, 2094, 5246, 12620, 13913, 16384, 0)},
         {xx <- c(0, 1500, 2500, 3220, 4220, 5464, 16384, 0)},
         {xx <- c(0, 2525, 5990, 9994, 11345, 16384, 0)},
         {xx <- c(0, 3276, 6552, 9828, 16384, 0)},
         {xx <- c(0, 3000, 3010, 3100, 6034, 7415, 8967, 11296, 16384, 0)},
         {xx <- c(0, 2071, 3279, 3712, 3889, 4580, 5270, 6478, 7253, 8113, 10093, 11557, 16384, 0)}
  )
}

gety <- function (y)
{
  switch(y, 
         {yy <- c(sin((0:16383)*0.0003835186051)) },
         {yy <- c(0, 0.33,  1,  0.33, 0, 0)},
         {yy <- c(1, 0.543, 0.367, 0.2037, 0.0845, 0, 0)},
         {yy <- c(1, 0.4, 0.2, 0.15, 0.08, 0, 0, 0)},
         {yy <- c(0.6904, 1, 0.71, 0.255, 0.15, 0, 0)},
         {yy <- c(-0.5, 0.04, 0.08, 0.01, 0.03, 0)},
         {yy <- c(0, 0.35, 0.85, 1, 0.857, 0.44, 0.214, 0.107, 0, 0)},
         {yy <- c(0, 0.135, 0.27, 0.416, 0.827, 0.949, 0.998, 1, 0.916, 0.7, 0.365, 0.234, 0, 0)}
  )
}

f <- function (l, x, y, a, o, c)# function start, end, amplitude, offset=freq, c=color
{
  polygon((x+getx(l)*(y-x)/16384),(gety(l)*a+o), col = grey(c), lwd = 0.2)
}


####oscfunctionsdraw
getxosc <- function (x)
{
  switch(x, 
         {xx <- c(0:16383)},
         {xx <- c(0, 4096, 8192, 12288, 16384, 0)}, 
         {xx <- c(0, 2094, 5246, 12620, 13913, 16384, 0)},
         {xx <- c(0, 1500, 2500, 3220, 4220, 5464, 16384, 0)},
         {xx <- c(0, 2525, 5990, 9994, 11345, 16384, 0)},
         {xx <- c(0, 3276, 6552, 9828, 16384, 0)},
         {xx <- c(0, 3000, 3010, 3100, 6034, 7415, 8967, 11296, 16384, 0)},
         {xx <- c(0, 2071, 3279, 3712, 3889, 4580, 5270, 6478, 7253, 8113, 10093, 11557, 16384, 0)}
  )
}

getyosc <- function (y)
{
  switch(y, 
         {yy <- c(sin((0:16383)*0.0003835186051)) },
         {yy <- c(0, 0.33,  1,  0.33, 0, 0)},
         {yy <- c(1, 0.543, 0.367, 0.2037, 0.0845, 0, 0)},
         {yy <- c(1, 0.4, 0.2, 0.15, 0.08, 0, 0, 0)},
         {yy <- c(0.6904, 1, 0.71, 0.255, 0.15, 0, 0)},
         {yy <- c(-0.5, 0.04, 0.08, 0.01, 0.03, 0)},
         {yy <- c(0, 0.35, 0.85, 1, 0.857, 0.44, 0.214, 0.107, 0, 0)},
         {yy <- c(0, 0.135, 0.27, 0.416, 0.827, 0.949, 0.998, 1, 0.916, 0.7, 0.365, 0.234, 0, 0)}
  )
}

fosc <- function (l, x, y, a, o, c)# function start, end, amplitude, offset=freq, c=color
{
  polygon((x+getx(l)*(y-x)/16384),(gety(l)*a+o), col = grey(c), lwd = 0.2)
}






labels = c(
#synth param
"e1_iamp_preset",
"e1_idifa_preset",
"e1_idifb_preset",
"e1_ifc_preset",
"e1_ifma_preset",
"e1_ifmb_preset",
"e1_imag_preset",
"e1_indxa_preset",
"e1_indxb_preset",
"e1_isk_preset",
"e1_kndx_preset",
#tables
"e1_ifn1_preset",
"e1_ifn2_preset",
"e1_ifn3_preset",
"e1_ifn4_preset",

#reverb
"e1_idis_preset",
"e1_arevsc_preset",
"e1_ch1_preset",
"e1_ch2_preset",
"e1_ch3_preset",
"e1_ch4_preset",
#mastervol
"e1_evolch1_preset",
"e1_evolch2_preset",
"e1_evolch3_preset",
"e1_evolch4_preset"
)

length(labels)
c(0:25*0.2)


#synth param
e1_iamp_preset
e1_idifa_preset
e1_idifb_preset
e1_ifc_preset
e1_ifma_preset
e1_ifmb_preset
e1_imag_preset
e1_indxa_preset
e1_indxb_preset
e1_isk_preset
e1_kndx_preset
#tables
e1_ifn1_preset
e1_ifn2_preset
e1_ifn3_preset
e1_ifn4_preset

#reverb
e1_idis_preset
e1_arevsc_preset
e1_ch1_preset
e1_ch2_preset
e1_ch3_preset
e1_ch4_preset
#mastervol
e1_evolch1_preset
e1_evolch2_preset
e1_evolch3_preset
e1_evolch4_preset
