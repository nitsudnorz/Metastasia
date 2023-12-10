# TODO: 
#setup doc
#plot function +
#plot tangent

library(tidyverse)
library(purrr)
library(nlme)

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

#x starting value
xs=30
#list of seeds y startingvalues at 0
seed <- list(1, 2 )
#offsets to equation
d1 <- list(10, 5, 17)
#offsets from equation to turningpoint
d2 <- list(10, 5, 17)
#list of equations
equation_list <- list(quote(x^2-3*x), quote((x-2)^2+3*x-500), quote((-x-2)^2+3*x-19))

##functions to write equation
'%c%' <- function(a,b) bquote(.(a) * .(b))
'%d%' <- function(a,b) bquote(.(a) - .(b))


plot_func1 <- function(r) {
  vect_2 <- numeric()
  p <- ggplot() + xlim(0,70) + ylim(-1200,1000) + xlab("x")
  for (s in seed) {
  #begin to draw at xs
     xs=0
  #set first y value
     ys=s
     p <- p
     for(r in 1:r){
       #substitute offset into equation
       x<-quote(x)
       w <- x %d% xs
       ww <- enquote(w)
       e <- (nth(equation_list,r))
       k <- substitute_q(e, list(x = (eval(ww))))
       #print(k)
       # calculate touching points t
       fu = as.expression(k)
#       print(fu)
#       px=xs
#       py=ys
#       diffx = quote(x) %d% px
#       as.expression(diffx)
#       expr1 <- fu
#       expr2 <- as.expression(D(fu,'x'))
#       expr3 <- as.expression(diffx)
#       expr4 <- as.expression(py)
#         g <- do.call(substitute, list(as.list(expr3)[[1]], env= list(a=3)))
#         h <- do.call(substitute, list(as.list(expr2)[[1]], env= list(a=2)))
#         i <- do.call(substitute, list(as.list(expr1)[[1]], env= list(a=2)))
#         j <- do.call(substitute, list(as.list(expr4)[[1]], env= list(a=2)))
#       fooExpr <- h %c% g
#       foofooExpr <- fooExpr %d% i
#       foofoofooExpr <- foofooExpr %d% j
   # print(foofoofooExpr)
#      equa <- function(x){
#      return(eval(foofoofooExpr))}
#      t = nth((uniroot.all (equa, lower = 0, upper = 10,
#                         tol = 0.0001)),1)
   #print(t)
   ##print functions
   vect_2 <- c(vect_2, as.vector(fu))
 #  p <- p + 
  #   stat_function(fun = function(x, i){f4(i)*x+((f3(i)-(f4(i))*i))}, args = list(i = i), xlim=c(i, 25)) +
   #  stat_function(fun = function(x, i){f6(f7(i))*x+((f5(f7(i))-(f6(f7(i)))*f7(i)))}, args = list(i = i), color="black", xlim=c(25, 60))

 # print(nth(d1,i))
 # print(nth(d2,i))
 # print(xs)
 #calculate offset for next iteration
  xs <- xs+nth(d1,r)+nth(d2,r)
     }
  }
  for (n in vect_2){
  #print(as.expression(n))
  euax <- function(x){
    return(eval(as.expression(n)))}
  p <- p + stat_function(fun = euax, color="blue", lwd = 1)
  }
  print(p)
  print(n)
} 

plot_func1(3)

do.call(n)

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

#### write function to substitute offset into equation

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

xs<-1000
x<-quote(x)
w <- x %d% xs
ww <- enquote(w)

eval(ww)
list(x = eval(ww))

list(x = quote(x-1000))
as.list(x = eval(ww))

substitute_q(e, list(x = (eval(ww))))


