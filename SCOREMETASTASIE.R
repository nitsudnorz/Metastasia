# TODO: 
#setup doc
#plot function +
#plot tangent

library(tidyverse)
library(purrr)
library(nlme)
library(lazyeval)

#plot a function
f1 <- function(x){
  return( x^2 - x )
}

curve(expr =f1, from=-3, to=3)



#plot a linear function

f2 <- function(x){
  ifelse(x < 0, -x, x)
}

#use gg plot to plot a function

ggplot(data.frame(x = c(-5, 5)), aes(x = x)) + 
  stat_function(fun = f2)

#use ggplot to plot for functions in the same graph

four_curves <- ggplot(data.frame(x = c(-5, 5)), aes(x = x)) + 
 # stat_function(fun = exp, color="red", lwd = 1) +
#  stat_function(fun = function(x){x^3}, color="blue", lwd = 1) + 
 # stat_function(fun = function(x){4*x^2}, color="green", lwd = 1) +
  stat_function(fun = function(x){10*x}, color="black", lwd = 1) +
#  annotate(geom="text", label = "Exponential", x = -4, y = 5, size =5) + 
#  annotate(geom="text", label = "Quadratic", x = -4, y = 95, size =5) +
#  annotate(geom="text", label = "Cubic", x = -4, y = -90, size =5) + 
  annotate(geom="text", label = "Linear", x = -4, y = -32, size =5)

four_curves

##calculate the tangent of a function

#equation

f=expression(x^2+3*x)

#derivative (m)

ff<-D(f,'x')

#set x value to try f an ff
x<-1

eval(f)

eval(ff) 

ff(x)

ff
f

# write abstractions for f and ff that return the values
f3 <- function(x){
  return( eval(f) )
}

f4 <- function(x){
  return(eval(ff))
}

#pick value and calculate

f3(2)
f4(2)

#y=mx+b line equation for the tangent

#calculate offset (b) of line equation for x value of 2
#b=y-m*x

b=(f3(2)-(f4(2))*2)

b

#insert equation for b into the line equation
#y=7*x-4


y=(f4(x)*x+(f3(x)-(f4(x))*x))
y

#use ggplot to draw two an equation and a tangent at point t

three_curves <- ggplot(data.frame(x = c(-5, 5)), aes(x = x)) + 
  # stat_function(fun = exp, color="red", lwd = 1) +
  stat_function(fun = function(x){f4(t)*x+((f3(t)-(f4(t))*t))}, color="blue", lwd = 1) +
  stat_function(fun = function(x){x^2+3*x}, color="black", lwd = 1) +
  #  annotate(geom="text", label = "Exponential", x = -4, y = 5, size =5) + 
  annotate(geom="text", label = "tangente", x = -4, y = -32, size =5) +
  annotate(geom="text", label = "gleichung", x = -4, y = 15, size =5)


t<-0.1
three_curves
t<-2.3
three_curves

#use a loop to draw a number of tangents

plot_func1 <- function(i) {
  p <- ggplot() + xlim(0,i) + xlab("x")
  for (i in 1:i) {
    p <- p + 
      stat_function(fun = function(x, i){f4(i)*x+((f3(i)-(f4(i))*i))}, args = list(i = i), xlim=c(-1, 19)) 
  }
  print(p)
}
plot_func1(20)

#calculate a tangent from an external point (p(x2/y2)) off the function
#tangent touches the graph at the point t(x1/y1)

#y=f4(i)*x+((f3(i)-(f4(i))*i))

# p(5/20)

#m=(df(x1))
#m=(y2-y1)/(x2-x1)
#y=f(x1)

#df(x1)=(f(x1)-y2)/(x1-x2)
#df(x1)*(x1-x2)=(f(x1)-y)

#example

(-2*r+3)*(r-5)=((r^2+3*r)-20)


#simplified

0=((r^2+3*r)-5)-(-2*r+3)*(r-20)

0=r^2-10*r+5


#intersections of the functions show x value for the touchingpoints of tangents

str(uniroot.all (function(r) r^2-10*r+5, lower = 0, upper = 10,
                 tol = 0.0001))

#choose first touchingpoint

nth((uniroot.all (function(r) (2*r+3)*(r-5)-(r^2+3*r-20), lower = 0, upper = 10,
            tol = 0.0001)),1)

#function to calculate alle touchingpoints

uniroot.all <- function (f, interval, lower= min(interval),
                         upper= max(interval), tol= .Machine$double.eps^0.2,
                         maxiter= 1000, trace = 0, n = 100, ... ) {
  
  ## error checking as in uniroot...
  if (!missing(interval) && length(interval) != 2)
    stop("'interval' must be a vector of length 2")
  if (!is.numeric(lower) || !is.numeric(upper) || lower >=
      upper)
    stop("lower < upper  is not fulfilled")
  
  ## subdivide interval in n subintervals and estimate the function values
  xseq <- seq(lower,upper,len=n+1)
  mod  <- f(xseq,...)
  
  ## some function values may already be 0
  Equi <- xseq[which(mod==0)]
  
  ss   <- mod[1:n]*mod[2:(n+1)]  # interval where functionvalues change sign
  ii   <- which(ss<0)
  
  for (i in ii)
    Equi <- c(Equi, uniroot(f,lower=xseq[i],upper=xseq[i+1], maxiter = maxiter, tol = tol, 
                            trace = trace, ...)$root)
  
  return(Equi)
}

#calculate offset b using the x coordinate of the intersections

b=(f3(9.47214)-(f4(9.47214))*9.47214)

b=(f3(0.527864)-(f4(0.527864))*0.527864)

b

#y=m*x+b
#b=
#x-> lösen der gleichung f(x)

#y1-y2=m(x1-x2)
#m=df(x)
#1.55676

f4(1.55676)

f4(11.7766)

y-20=6.11352*(5-x)

y=-6.11352*x+50.5676

# calculate for the external point 10/100

t = nth((uniroot.all (function(r) (2*r+3)*(r-10)-(r^2+3*r-100), lower = 0, upper = 10,
                      tol = 0.0001)),1)

functionandtangentfrompoint_curves <- ggplot(data.frame(x = c(-10, 10)), aes(x = x)) + 
  # stat_function(fun = exp, color="red", lwd = 1) +
  stat_function(fun = function(x){f4(t)*x+((f3(t)-(f4(t))*t))}, color="blue", lwd = 1) +
  stat_function(fun = function(x){x^2+3*x}, color="black", lwd = 1) +
  #  annotate(geom="text", label = "Exponential", x = -4, y = 5, size =5) + 
  annotate(geom="text", label = "tangente", x = -4, y = -32, size =5) +
  annotate(geom="text", label = "gleichung", x = -4, y = 15, size =5)

functionandtangentfrompoint_curves

#two equations connected through two tangents (tqecttt)

#equation1

f=expression(x^2+3*x)

#derivativeeq1 (m)

ff<-D(f,'x')

#equation2

g=expression(-(x-30)^2-4*x-4)

#derivative eq2 (m)

gg<-D(g,'x')
gg


# write abstractions for f, ff, g and gg that return the values
f3 <- function(x){
  return( eval(f) )
}

f4 <- function(x){
  return(eval(ff))
}

f5 <- function(x){
  return( eval(g) )
}

f6 <- function(x){
  return(eval(gg))
}

f5(2)

#equationchange at x=25
#calculate a tangent from an external point (P(x2/y2)) off the function
#tangent touches the graph at the point t(x1/y1)

#calculate the y coordinate of P using the line equation of the first tangent

f4(t)*25+((f3(t)-(f4(t))*t))

#y2=280.6832
#P(25/280.6832)

#calculate touching point for first tangent and equation with the external point 10/100

t = nth((uniroot.all (function(r) (2*r+3)*(r-10)-(r^2+3*r-100), lower = 0, upper = 10,
                      tol = 0.0001)),1)

#calculate touching point tt for second tangent and equation with p as external point

#df(x1)*(x1-x2)-(f(x1)-y)=0
#df(x1)*(x1-x2)=(f(x1)-y)

g
gg



tt= nth((uniroot.all (function(r) -(2*(r-30)+4)*(r-25)-((-(r - 30)^2 - 4 * r - 4)-280.6832), lower = 0, upper = 1000,
                      tol = 0.0001)),2)
tt


tqecttt_curves <- ggplot(data.frame(x = c(0, 50)), aes(x = x)) + 
  stat_function(fun = function(x){f6(tt)*x+((f5(tt)-(f6(tt))*tt))}, color="blue", lwd = 1, xlim=c(25, 50)) +
  stat_function(fun = function(x){f4(t)*x+((f3(t)-(f4(t))*t))}, color="blue", lwd = 1, xlim=c(-1, 25)) +
  stat_function(fun = function(x){x^2+3*x}, color="black", lwd = 1) +
  stat_function(fun = function(x){-(x-30)^2-4*x-4}, color="black", lwd = 1) #+
  #annotate(geom="text", label = "Exponential", x = -4, y = 5, size =5) + 
  #annotate(geom="text", label = "tangente", x = -4, y = -32, size =5) +
  #annotate(geom="text", label = "gleichung", x = -4, y = 15, size =5)

tqecttt_curves

### draw n tangents connecting two curves

#abstraction for tt
f7 <- function(i){
  return(eval(nth((uniroot.all (function(r) -(2*(r-30)+4)*(r-25)-((-(r-30)^2-4*r-4)-(f4(i)*25+((f3(i)-(f4(i))*i)))), lower = 0, upper = 1000, tol = 0.0001)),2)))
}

f7(1)
i=10

  plot_func1 <- function(i) {
    p <- ggplot() + xlim(0,70) + ylim(-1200,1000) + xlab("x")
    for (i in 1:i) {
      p <- p + 
        stat_function(fun = function(x, i){f4(i)*x+((f3(i)-(f4(i))*i))}, args = list(i = i), xlim=c(i, 25)) +
        stat_function(fun = function(x, i){f6(f7(i))*x+((f5(f7(i))-(f6(f7(i)))*f7(i)))}, args = list(i = i), color="black", xlim=c(25, 60))
    }
    p <- p + stat_function(fun = function(x){x^2+3*x}, color="blue", lwd = 1) +
      stat_function(fun = function(x){-(x-30)^2-4*x-4}, color="blue", lwd = 1)
    print(p)
  }
  
plot_func1(10)

#calculate point for equationchange x= 25; y=f4(i)*x+((f3(i)-(f4(i))*i))
#calculate touching point with eq2 
#t = nth((uniroot.all (function(r) -(2*(r-30)+4)*(r-25)-((-(r - 30)^2-4*r-4)-(f4(i)*25+((f3(i)-(f4(i))*i))), lower = 0, upper = 1000, tol = 0.0001)),2)

#### n-equations

#input VN=number of voices
#Of eq1(offset) eqchange eq2(offset) eqchange eq3(offset)
#functions

func <- function(x,fu){
  return( eval(fu) )
}
derivate <- function(x,fu){
  return( eval(D(fu,'x')) )
}

derivate(2, expression(x^2+3*x))
func(2, expression(x^2+3*x)) 

fu = expression(x^2+3*x)


#write function to look for touching points
#df(x1)*(x1-x2)-(f(x1)-y)=0

fu = expression(x^2+3*x)

(px/py)
px=4
py=5
diffx = quote(x) %d% px

as.expression(diffx)

expr1 <- fu
expr2 <- as.expression(D(fu,'x'))
expr3 <- as.expression(diffx)
expr4 <- as.expression(py)
g <- do.call(substitute, list(as.list(expr3)[[1]], env= list(a=3)))
h <- do.call(substitute, list(as.list(expr2)[[1]], env= list(a=2)))
i <- do.call(substitute, list(as.list(expr1)[[1]], env= list(a=2)))
j <- do.call(substitute, list(as.list(expr4)[[1]], env= list(a=2)))
'%c%' <- function(a,b) bquote(.(a) * .(b))
'%d%' <- function(a,b) bquote(.(a) - .(b))
                   
fooExpr <- h %c% g

foofooExpr <- fooExpr %d% i

foofoofooExpr <- foofooExpr %d% j

foofoofooExpr

equa <- function(x){
  return( eval(foofoofooExpr) )
}


t = nth((uniroot.all (equa, lower = 0, upper = 10,
                      tol = 0.0001)),1)
t
##

primes_list <- list(quote(x^2-3*x), quote((x-2)^2+3*x-19))

# loop version 1
#
for (p in primes_list) {
  fu = as.expression(p)
  px=4
  py=5
  diffx = quote(x) %d% px
  as.expression(diffx)
  expr1 <- fu
  expr2 <- as.expression(D(fu,'x'))
  expr3 <- as.expression(diffx)
  expr4 <- as.expression(py)
  g <- do.call(substitute, list(as.list(expr3)[[1]], env= list(a=3)))
  h <- do.call(substitute, list(as.list(expr2)[[1]], env= list(a=2)))
  i <- do.call(substitute, list(as.list(expr1)[[1]], env= list(a=2)))
  j <- do.call(substitute, list(as.list(expr4)[[1]], env= list(a=2)))
  '%c%' <- function(a,b) bquote(.(a) * .(b))
  '%d%' <- function(a,b) bquote(.(a) - .(b))
  
  fooExpr <- h %c% g
  
  foofooExpr <- fooExpr %d% i
  
  foofoofooExpr <- foofooExpr %d% j
  
  equa <- function(x){
    return(eval(foofoofooExpr) )
  }
  
  
  t = nth((uniroot.all (equa, lower = 0, upper = 10,
                        tol = 0.0001)),1)
  print(t)
}

#structure: 




touchpoint <- function(eq,px,py)

  
foofoofooExpr
## testcase
#t=x
#line equation y=m*x+b
#b=y-m*x

derivate(t,fu)*x+(func(t,fu)-derivate(t,fu)*t)

ggplot(data.frame(x = c(-5, 5)), aes(x = x)) + 
  stat_function(fun = f2)

#use ggplot to plot for functions in the same graph

testtangent <- ggplot(data.frame(x = c(-5, 5)), aes(x = x)) + 
  stat_function(fun = function(x){derivate(t,fu)*x+(func(t,fu)-derivate(t,fu)*t)}, color="black", lwd = 1) +
  annotate(geom="text", label = "Tangent", x = -4, y = -32, size =5)

testtangent

#



######

####initvalues for function
#x starting value
xs=0
#list of seeds y startingvalues at xs
seed <- list(1, 2 )
#offsets from seed to equation
d1 <- list(10, 5, 17)
#offsets from equation to turningpoint
d2 <- list(10, 5, 17)
#####turningpoint->seed
#list of equations
equation_list <- list(quote(x^2-3*x), quote((x-2)^2+3*x-500), quote((-x-2)^2+3*x-19))

##functions to write equation
'%c%' <- function(a,b) bquote(.(a) * .(b))
'%d%' <- function(a,b) bquote(.(a) - .(b))
######


#substitute offset into equation
offsetintoequation <- function(state,eq)
{      
  x<-quote(x)
  w <- x %d% state
  ww <- enquote(w)
  e <- eq
  k <- substitute_q(e, list(x = (eval(ww))))
  return (k)
}

offsetintoequation(10,nth(equation_list,2))



### calculate touching point t from point and equation

#write equation for touchingpoint

writetpointeq <- function(px,py,eq)
{fu = as.expression(eq)
  #print(fu)
  diffx = quote(x) %d% px
  expr1 <- fu
  expr2 <- as.expression(D(fu,'x'))
  expr3 <- as.expression(diffx)
  expr4 <- as.expression(py)
  g <- do.call(substitute, list(as.list(expr3)[[1]], env= list(a=2)))
  h <- do.call(substitute, list(as.list(expr2)[[1]], env= list(a=2)))
  i <- do.call(substitute, list(as.list(expr1)[[1]], env= list(a=3)))
  j <- do.call(substitute, list(as.list(expr4)[[1]], env= list(a=4)))
  fooExpr <- h %c% g
  foofooExpr <- fooExpr %d% i
  foofoofooExpr <- foofooExpr %d% j
  return (paste(deparse1(foofoofooExpr)))
} 

(writetpointeq(0,-50,offsetintoequation(10,nth(equation_list,2))))

#calculate x value for touching point

gettpoint <- function(eq,witchpoint)  {
# print(foofoofooExpr)
  equa <- function(x){
    return(eval(parse( text = eq)))}
  force(equa)
  print(equa)
  t = nth((uniroot.all (equa, lower = 0, upper = 10,
                      tol = 0.0001)),witchpoint)
  return (t)
}

gettpoint((writetpointeq(0,-50,offsetintoequation(10,nth(equation_list,1)))),1)


nth(equation_list,1)
#####

####build function list (vect_2)


(quote((x-2)^-2+(3*x)-199))

(as.list(parse(text=(writetpointeq(0,-50,offsetintoequation(10,nth(equation_list,1)))))))

vect_2 <- numeric()

vect_2

vect_2 <- c(vect_2, as.vector(as.list(parse(text=(writetpointeq(0,-50,offsetintoequation(10,nth(equation_list,1))))))))

funcs <- list()
####,vect

#####drawbaseequations

#offsets from seed to equation
d1 <- list(10, 25, 17)
#offsets from equation to turningpoint
d2 <- list(20, 25, 17)
#####turningpoint->seed

#list of equations
equation_list <- list(quote(x^2-3*x), quote(-((x-2)^2+3*x+140)), quote((-x-2)^2+3*x-19))


###to dataframe
equations = (matrix(unlist(equation_list), ncol=length(l), byrow=TRUE))

d <- data.frame(offset = unlist(d1), equations, onset =unlist(d2))
d




###iterate through dataframe
vect_2 <-numeric()
xs=0
for(i in seq_len(nrow(d))) {
  vect_2 <- c(vect_2, as.vector(offsetintoequation(xs+d[i,1],nth((d[i,2]),1))))
  print(offsetintoequation(xs+d[i,1],nth((d[i,2]),1)))
  xs <- xs+d[i,1]+d[i,3]
  force(xs)
}

vect_2
          

######drawtangents
seed <- list(-450, 500 )

i=1

xs=0
for(i in seq_len(nrow(d))) {
  # (gettpoint((writetpointeq(xs,-450,(offsetintoequation(xs+d[i,1],nth((d[i,2]),1))))),1))
  eql = (writetpointeq(0,-50,(offsetintoequation(xs+d[i,1],nth((d[i,2]),1)))))
  force(eql)
  print(eql)
  t = (gettpoint(eql,1))
  #print(t)
  force(t)
  fu = parse(text=(eql))
  force(fu)
  #print(fu)
  fun = function(x){derivate(t,fu)*x+(func(t,fu)-derivate(t,fu)*t)}
  #print(fun)
  #print(eql)
  #for (s in seed)
  #{print(s)}
  #print(offsetintoequation(xs+d[i,1],nth((d[i,2]),1)))
  xs <- xs+d[i,1]+d[i,3]
  force(xs)
}

i=1

eql = (writetpointeq(0,-50,(offsetintoequation(xs+d[i,1],nth((d[i,2]),1)))))

gettpoint((writetpointeq(0,50,(offsetintoequation(xs+d[i,1],nth((d[i,2]),1))))),1)


eql=(nth((as.list(parse(text=(writetpointeq(0,-50,(offsetintoequation(xs+d[i,1],nth((d[i,2]),1)))))))),1))

eql
gettpoint(eql,1)


func <- function(x,fu){
  return( eval(fu) )
}
derivate <- function(x,fu){
  return( eval(D(fu,'x')) )
}

derivate(2, expression(x^2+3*x))
func(2, expression(x^2+3*x)) 

fu = expression(x^2+3*x)

fu = parse(text=(eql))

fun = function(x){derivate(t,fu)*x+(func(t,fu)-derivate(t,fu)*t)}

fun(3)



###write line equation

'%c%' <- function(a,b) bquote(.(a) * .(b))
'%d%' <- function(a,b) bquote(.(a) - .(b))
'%e%' <- function(a,b) bquote(.(a) + .(b))

tangeq <- function(x,a){}

writelineeq <-function(eq,t)
fu = as.expression(eq)
expr1 <- fu
expr2 <- as.expression(D(fu,'x'))
z = quote(z)
k <- do.call(substitute, list(as.list(expr1)[[1]], env= list(a=2)))
l <- do.call(substitute, list(as.list(expr2)[[1]], env= list(a=2)))
dooExpr <- l %c% z
doodooExpr <- dooExpr %e% k
doodoodooExpr <- doodooExpr %d% k
doodoodoodooExpr <- doodoodooExpr %d% t
return (paste(deparse1(gsub("x", t , doodoodoodooExpr))))

writelineeq(x^2+3*x,8.94427191212252)



expr2

plot_func1 <- function(r) {
  p <- ggplot() + xlim(0,70) + ylim(-1200,1000) + xlab("x")
  for (s in seed) {
  #begin to draw at xs
     xs=0
  #set first y value
     ys=s
     for(r in 1:r){
       #substitute offset into equation
       x<-quote(x)
       w <- x %d% xs
       ww <- enquote(w)
       e <- (nth(equation_list,r))
       k <- substitute_q(e, list(x = (eval(ww))))
       #print(k)
       ### calculate touching points t
       fu = as.expression(k)
       #print(fu)
       px=xs
       py=ys
       diffx = quote(x) %d% px
       expr1 <- fu
       expr2 <- as.expression(D(fu,'x'))
       expr3 <- as.expression(diffx)
       expr4 <- as.expression(py)
         g <- do.call(substitute, list(as.list(expr3)[[1]], env= list(a=3)))
         h <- do.call(substitute, list(as.list(expr2)[[1]], env= list(a=2)))
         i <- do.call(substitute, list(as.list(expr1)[[1]], env= list(a=2)))
         j <- do.call(substitute, list(as.list(expr4)[[1]], env= list(a=2)))
       fooExpr <- h %c% g
       foofooExpr <- fooExpr %d% i
       foofoofooExpr <- foofooExpr %d% j
   # print(foofoofooExpr)
      equa <- function(x){
      return(eval(foofoofooExpr))}
      t = nth((uniroot.all (equa, lower = 0, upper = 10,
                         tol = 0.0001)),1)
   #print(k)
   ##print functions
  #
      force(k)
      vect_2 <- c(vect_2, as.vector(k))

 #  p <- p + 
  #   stat_function(fun = function(x, i){f4(i)*x+((f3(i)-(f4(i))*i))}, args = list(i = i), xlim=c(i, 25)) +
   #  stat_function(fun = function(x, i){f6(f7(i))*x+((f5(f7(i))-(f6(f7(i)))*f7(i)))}, args = list(i = i), color="black", xlim=c(25, 60))

 # print(nth(d1,i))
 # print(nth(d2,i))
 # print(xs)
 #calculate offset for next iteration
      force(r)
      offset = nth(d1,r)
      force(offset)
      onset =nth(d2,r)
      force(onset)
  xs <- xs+offset+onset
     }
  }
  return (vect_2)
  for(q in 1:3){
    funcName <- paste( 'func', q, sep = '' )
    funcs[[funcName]] = funcy(q)
  }
  #print(funcs)
  for (a in funcs){
    force(a)
    p <- p + stat_function(fun = a, color="blue", lwd = 1) 
  }
  print(p)
} 



funcs <- list()
for(i in 1:3){
  funcName <- paste( 'func', i, sep = '' )
  funcs[[funcName]] = funcy(i)
}

funcy <- function(i) {
  force(i)
  q = (nth(vect_2,i))
  force(q)
  body <- paste(deparse1(q))
  print(body)
  args <- "x"
  eval(parse(text = paste('f <- function(', args, ') { return(' , body , ')}', sep='')))
}


p <- ggplot() + xlim(0,150) + ylim(-500,500) + xlab("x")
testerprint7 <- function () {
  for (i in funcs){
    force(i)
    print(i)
    p <- p + stat_function(fun = i, color="blue", lwd = 1) 
  }
  print(p)
}

testerprint7()

funcs

plot_func1(3)

vect_2

vect_2 <-numeric()

vect_2 <- c(vect_2, as.vector(quote((x-2)^-2+(3*x)-199)))

equation_list <- list(quote(x^2-3*x), quote((x-2)^2+3*x-500), quote((-x-2)^2+3*x-19))

for (a in equation_list){
  force(a)
  vect_2 <-c(vect_2 ,as.vector(a))}

print(vect_2)

vect_2 <- numeric()

plot_func1(3)


euax <- function(x){
  return(eval(expression(nth(vect_2, x))))}

euaxx <- function(x,y){
  return(eval(euax(y)))}

f99 <- function(x, a){
  return (eval(as.expression(nth(vect_2, a))))
}

vect_2 = c(vect_2, plot_func1(3,vect_2))

vect_2

vect_2 <- c(vect_2, as.vector((quote((x-2)^-2+3*x+499))))

p <- ggplot() + xlim(0,70) + ylim(-1200,1000) + xlab("x")
df=data.frame(y=1:4)
testerprint <- function (a) {
  for (a in c(1:a)){
   p <- p + stat_function(fun = function(x){f99(x,(aes_(y=df$x[a])))}, color="blue", lwd = 1) 
  #print(as.expression(n))
  }
  print(p)
}

printy <- function(a) {
  force(a)
  p <- p + stat_function(fun = function(x){f99(x,a)}, color="blue", lwd = 1) 
}

p <- ggplot() + xlim(0,70) + ylim(-1200,1000) + xlab("x")
funcs <- lapply(1:4, printy)
funcs
print(p)

print(p)

funcs <- list()
funcs[]

# loop through to define functions
for(i in 1:21){
  
  # Make function name
  funcName <- paste( 'func', i, sep = '' )
  
  # make function
  func = paste('function(x){x * ', i,'}',sep = '')
  
  funcs[[funcName]] = eval(parse(text=func))
  
}

funcs


f99 <- function(x, a){
  return (eval(as.expression(nth(vect_2, a))))
}

vect_2


p <- ggplot() + xlim(0,70) + ylim(-1200,1000) + xlab("x")
testerprint2 <- function () {
  for (i in vect_2){
    x = 2
    force(i)
    #f98 <- function(x){return (eval(as.expression(i)))}
    #print(f98(1))
     print(as.expression(i))
    #p <- p + stat_function(fun = function(x){return (eval(as.expression[i]))}, color="blue", lwd = 1) 
  }
  print(p)
}

testerprint2()

f3 <- function(x){
  return( eval(f) )
}




testerprint(4)

lazy_

df=data.frame(x=1:10,y=1:10)

testerprint2 <- function (a) {
  for (a in 1:a){
    p <- p + stat_function(fun = function(x){f99(x,!!enquo(a))}, color="blue", lwd = 1) 
    #print(as.expression(n))
  }
  print(p)
}
testerprint2(4)

panel=ggplot() + xlim(-1,11) + ylim(-1,11)
df=data.frame(x=1:10,y=1:10)
for (i in c(1:10)) {
  panel=panel+geom_point(aes_(x=df$x[i],y=df$y[i]))
}
print(panel)

aes_q(substitute(x))
p <- ggplot() + xlim(0,70) + ylim(-1200,1000) + xlab("x")
df=data.frame(y=1:4)


testerprint3 <- function (a) {
        for (a in c(1:a)){
          f <- function(x){f99(x,(aes_(y=df$x[i])))}
          p <- p + stat_function(fun = f, color="blue", lwd = 1) 
          #print(as.expression(n))
        }
        print(p)
}
      testerprint3(4)
      df=data.frame(y=1:4)
      testerprintx <- function (a) {
        for (a in c(1:a)){
        print(aes_(y=df$x[a]))}
      }
          #print(as.expression(n))
      testerprintx(4)
      df
      df$x[1]
      
      p <- ggplot() + xlim(0,70) + ylim(-1200,1000) + xlab("x")
      df=data.frame(y=1:4)
      testerprint3 <- function (a) {
        for (a in c(1:a)){
          f <- function(x){
            return (eval(as.expression(nth(vect_2, a))))
          }
          p <- p + stat_function(fun = f, color="blue", lwd = 1) 
          #print(as.expression(n))
        }
        print(p)
      }
      testerprint3(4)      
      
      x <- llist(1, 2, 3, 4, 5)
      x %!!% 3 # => 4

      
      
      # eager argument version
      `[` <- function(x, ...) { 
        args <- list(...)
        if(is.function(x)) {
          return(do.call(x, args = args))
        }
        return(do.call(base::`[`, args = c(list(x), args)))
      }
        
  f[a]    
 sin[5]     
  
  foo <- function(x) {
  y <- 10
  ~ x + y
}
f <- foo(1)
f
f_eval(f)
      
aes(!!enquo(a))

testy <- list()
testloop <- function(a){
  for (a in 1:a){
    testy <- c(testy, aes(!!enquo(a)))
  }
  testy
}

multiply <- function(i) {
  force(i)
  function(x) x * i
}

funcs <- list()
for(i in 1:21){
  funcName <- paste( 'func', i, sep = '' )
  funcs[[funcName]] = multiply(i)
}

testloop(2)


dplyr::mutate(data, !!myquosure) 

testerprint2(4)


force(i)

enforcer <- function(x,z){
  return(n)
}

a=4
P
testy <- list()

testloop <- function(a){
  for (a in 1:a){
    lazy_eval(a)
    testy <- c(testy, a)
  }
  testy
}

testy <- list()

testloop <- function(a){
  for (a in 1:a){
    lazy_eval(a)
    testy <- c(testy, as.vector(f1(a)))
  }
  testy
}

testloop(4)

testy

vect_2 <- c(vect_2, as.vector(fu))

a= deparse(a)
a
eval(as.symbol(a))

typeof(a)
as.double()
push
varret(4) 

multiply <- function(i) {
  force(i)
  function(x) x * i
}
#########################################################
funcs <- list()
for(i in 1:21){
  funcName <- paste( 'func', i, sep = '' )
  funcs[[funcName]] = multiply(i)
}


funcs


p <- ggplot() + xlim(0,70) + ylim(-1200,1000) + xlab("x")
testerprint7 <- function () {
  for (i in funcs){
    force(i)
    print(i)
    p <- p + stat_function(fun = i, color="blue", lwd = 1) 
  }
  print(p)
}

testerprint7()

######YESSSS!
a=3
as.numeric(a)
n
vect_2

nth(vect_2,2)

funcs <- list()
for(i in 1:4){
  funcName <- paste( 'func', i, sep = '' )
  funcs[[funcName]] = funcy(i)
}

funcy <- function(i) {
  force(i)
  q = (nth(vect_2,i))
  force(q)
  body <- paste(deparse(q))
  print(body)
  args <- "x"
  eval(parse(text = paste('f <- function(', args, ') { return(' , body , ')}', sep='')))
}

vect_2 <- c(vect_2, as.vector(fu))
vect_2
q = (nth(vect_2,2))

as.character(q)

q
vect_2



vect_2 <-numeric()

vect_2 <- c(vect_2, as.vector(quote((x-2)^-2+(3*x)-199)))



paste(deparse(q))
as.
funcs



body <- "(x1 + x2) * x3"
args <- "x, x2, x3"

body <- (nth(vect_2,i))
args <- "x"
eval(parse(text = paste('f <- function(', args, ') { return(' , body , ')}', sep='')))


as.function((nth(vect_2,i)))

typeof(vect_2)

print(vect_2)

nth(vect_2, 1)

f99 <- function(x, a){
  return(eval(as.expression(nth(vect_2, a))))
}

f99(25, 2)
(as.expression(nth(vect_2, 2)))

eaux
do.call(n)

loopi <-function a
for (a in 1:a){print(a)}

mapply()

as.function.default(n)
n
a = (function(x){(as.expression(n))})
a
euax
bquote()

n
deparse(fu)

as.data.frame.vector(fu)

as.function(list(fu))


vect_1 <- c(2, 7, 4, 9, 8)
vect_2 <- numeric()

for(num in vect_1) {
  vect_2 <- c(vect_2, num * 10)
}

vect_2


call()

as.vector(fu)
as.function(as.list(fu),x)

print(p)

#### write function to substitute x-offset into equation

substitute_q <- function(x, env) {
  call <- substitute(substitute(y, env), list(y = x))
  eval(call)
}

x <- quote(a + b)
substitute_q(x, list(a = 1, b = 2))

substitute_q <- function(x, env) {
  call <- substitute(substitute(y, env), list(y = x))
  eval(call)
}


e <- (nth(equation_list,2))

substitute_q(e, list(x = quote(x-1000)))

#########

xs<-1000
x<-quote(x)
w <- x %d% xs
ww <- enquote(w)

eval(ww)
list(x = eval(ww))

list(x = quote(x-1000))
as.list(x = eval(ww))

substitute_q(e, list(x = (eval(ww))))


