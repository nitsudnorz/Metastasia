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
  par(cex.axis=0.4)
  axis(2, at = c(0:24*0.4+40), las = 2, labels = c(
    #synth param
    "iamp",
    "idifa",
    "idifb",
    "ifc",
    "ifmat",
    "ifmb",
    "imag",
    "indxa",
    "indxb",
    "isk",
    "kndx",
    #tables
    "ifn1",
    "ifn2",
    "ifn3",
    "ifn4",
    
    #reverb
    "idis",
    "arevsc",
    "ch1",
    "ch2",
    "ch3",
    "ch4",
    #mastervol
    "evolch1",
    "evolch2",
    "evolch3",
    "evolch4"
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
        line = 2,
        las = 2,
        at = 45,
        cex = 0.8,
        font = 3)
  
  steps = c(1:10)
  for (l in steps){
    abline(v = steps, col = "grey", lty = "dashed")
  	}
}


drawpage(1, 0, 10)

textbox(c(0,0.25), 40.7, c("Preset=100"), cex=0.4, justify = l, lwd = 0.2,
        col="black", border="black", margin = 0, box = 1,adj = c(-0.1,0.3))
textbox(c(0.25,0.5), 40.7, c("Preset=100"), cex=0.4, justify = l,lwd = 0.2,
        col="black", border="black", margin = 0, box = 1,adj = c(-0.1,0.3))
textbox(c(0.5,0.75), 40.7, c("Preset=100"), cex=0.4, justify = l,lwd = 0.2,
        col="black", border="black", margin = 0, box = 1,adj = c(-0.1,0.3))
textbox(c(0.75,1), 40.7, c("Preset=100"), cex=0.4, justify = l,lwd = 0.2,
        col="black", border="black", margin = 0, box = 1,adj = c(-0.1,0.3))


textbox(c(5,6), 10, c("Preset=100"), cex=1, justify = l,
        col="black", border="black", margin = 0, box = 1,adj = c(-0.1,0.5))

textbox(c(4,5), 9, c("Preset=100"), cex=1, justify = l,
        col="black", border="black", margin = 0, box = 1,adj = c(-0.1,0.5))



dev.off()


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
