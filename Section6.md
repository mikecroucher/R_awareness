# Microsoft R Open - An enhanced version of R

Revolution Analytics were a small company who, among other things, produced an enhanced version of R. They have since been purchased by Microsoft who use this version of R in their cloud based data-analytics services within Azure (see http://blog.revolutionanalytics.com/2016/03/ds-vm-update.html for example)

There is a free version of this enhanced version of R available - Microsoft R Open (previously Revolution R Open).

Microsoft R Open is available for Linux, Mac OS X and Windows and is fully compatible with the standard, community version of R we've been using all day.

It can be installed alongside 'traditional' R.

## Exercise

* Download and install Microsoft R Open from https://mran.revolutionanalytics.com/download/. Ensure that you install the MKL Math library component as well.

## Faster Linear Algebra

One of the enhancements provided by Microsoft R Open is that it makes use of the [Intel Math Kernel Library (MKL)](https://software.intel.com/en-us/intel-mkl). This is a highly optimised linear algebra library that's also used by products such as MATLAB and Mathematica.

The practical upshot is that many operations involving functions on matrices are significantly faster in Microsoft R Open.

Although this seems to be a rather limited scope, it has the potential to accelerate many commonly performed calculations in R.

A full discussion is beyond the scope of this tutorial but the following exercise will give you an idea of the potential speed benefits.

## Exercise Matrix-Matrix Multiply

Multiplying matrices together is a very common operation in scientific computing. 

* Open R Studio and ensure that it is using Microsoft R Open (See [Section 3](./Section3.md) for details on how to swap R version if you need it.
* In R Studio, execute the command

```
download.file(
'https://github.com/mikecroucher/R_awareness/raw/master/code/section6/matmul.r',
'./matmul.r')
```
This downloads a program that generates two 5000x5000 matrices and multiplies them together.
* Open the file matmul.r in RStudio by clicking on it in the **Files** pane
* Run it by clicking on **source** in the **matmul.r** window

![Matrix multiply in R Studio](./images/matmul_rs.png)

* Note the time it took. On my laptop, running Windows 10, it took 1.5 seconds.
* Switch the version of R used by R Studio to the standard R 3.2.4 and repeat the above. You'll need to restart R Studio

## Example times
On my quad-core laptop with an Intel Haswell CPU, running Windows 10, I got the following results

* Microsoft R Open 3.2.4 - 1.5 seconds
* Standard R 3.2.4 - 78.6 seconds

Over a 50 times speed-up just by switching the version of R used.

If you try this exercise in different operating systens, you'll find different results. The Mac version of standard R is significantly faster than the Windows version for example.

## Scope of the accelerated functions

It's important to note that the only functions that are accelerated are linear algebra-related functions. These include things like matrix multiplication, cholesky factorisation, principal components analysis and linear discriminant analysis.

## Exercise - Example code that isn't accelerated

An example of some code where Microsoft R Open doesn't provide any acceleration is shown below.

```
library(tictoc)
# Slightly modified version of the original by Mike Hewnar
# http://hewner.com/2012/10/09/making-simple-fractals-in-r/

tic()
a <- -0.966918
b <- 2.879879
c <- .765145
d <- .744728
pointsToPlot <- 100000


x <- .1
y <- .1
allXs = rep(0,pointsToPlot)
allYs = rep(0,pointsToPlot)
for(i in 1:pointsToPlot) {
  newx <- sin(y*b) + c*sin(x*b)
  newy <- sin(x*a) + d*sin(y*a)
  x <- newx
  y <- newy
  allXs[i] <- x
  allYs[i] <- y
}
toc()

plot(allXs, allYs, pch=".", col="red",
     main="Strange Attractor: King's Dream")
```

Run this in R Studio using both standard R and Microsoft R open and confirm that there isn't any real difference. 

On my machine, both took about 4.2 seconds.  

Either copy and paste the above or download it using

```
download.file(
'https://raw.githubusercontent.com/mikecroucher/R_awareness/master/code/section6/kings_dream.r',
'kings_dream.r')

```

## More about Microsoft R Open

Microsoft R Open contains more enhancements than those we've explored today. The most prominent are related to reproducible research. 

See https://mran.microsoft.com/documents/rro/reproducibility/ for more details


