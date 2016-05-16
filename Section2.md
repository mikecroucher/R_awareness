## The importance of packages

### Installing your first package

Launch R 3.3.0 and run the following lines of code to produce a basic scatter plot.

    x <- 1:9
    y <- c(1,2,3,4,5,4,3,2,1)
    plot(x,y)

A colleague tells you that there is a better function for plotting.
She shows you on her machine and since you think it looks much nicer than the basic **plot**, you try it on your machine:

    qplot(x)
    Error: could not find function "qplot"

We occasionally get support calls from researchers, new to R, that their copy of R is broken.
They'll cite error messages such as the one above.

A quick google shows that the **qplot** function is part of the ggplot2 package (probably!).
The **install.packages** function allows us to install packages by name

    install.packages('ggplot2')

This pulls in the package from a standard set of repositories called [CRAN](https://cran.r-project.org/) (Comprehensive R Archive Network).
There are lots of mirrors for the CRAN and R will ask you which one you want to use. It is advisable that you choose one close to your location.

Note that the **ggplot2** package depends on several other packages. These are automatically downloaded and installed as well.
Thanks to this mechanism, it is possible for a user to install hundreds of megabytes of pre-requisite packages from just one install command.

Note: The user doesn't need admin rights for these installs but they will need somewhere they can write to in order to create a **personal library**. They will automatically be prompted to do so if they do not have the required permissions to write to write to a central location.

### Which packages are installed?

To see which packages are installed, execute

    installed.packages()

### Using an installed package

We've installed the **ggplot2** package but we need to do a little more in order to use it. We need to use the **library** function

    library(ggplot2)

We can now use all of the functions in the ggplot2 package - one of which is the **qplot2** function.

    qplot(x,y)

### The extent of the ggplot2 package

The ggplot2 package is a big deal! It's *much* more than this simple function. It's extensively used for publication quality graphics by 1000s of researchers.
There have been entire books written about this one package

<a rel="nofollow" href="http://www.amazon.co.uk/gp/product/331924275X/ref=as_li_tl?ie=UTF8&camp=1634&creative=19450&creativeASIN=331924275X&linkCode=as2&tag=walkingrandom-21"><img border="0" src="http://ws-eu.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=331924275X&Format=_SL250_&ID=AsinImage&MarketPlace=GB&ServiceVersion=20070822&WS=1&tag=walkingrandom-21" ></a><img src="http://ir-uk.amazon-adsystem.com/e/ir?t=walkingrandom-21&l=as2&o=2&a=331924275X" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />

You can get help on the package with

    help(package=ggplot2)

Once you've loaded the **ggplot2** package, do the following to see the list of functions it provides.

    ls(pos = "package:ggplot2")  

That's just one package! At the time of writing, there are over 8400 of them and the number is increasing all the time.

### Packages are a big deal

MATLAB has it's toolboxes, R has packages. Thousands of them! At the time of writing, Monday 16th May 2016, there are 8409 in the CRAN https://cran.r-project.org/web/packages/ and this number is continuously increasing.

#### Packages provide extra Functionality

Packages provide extra functionality that's not in base R. Functionality that many people use!  ggplot2 is one of the 50+ packages written by prolific coder, Hadley Wickham. These packages are so popular that they are referred to as The Hadleyverse by the community.

* [The Hitchhiker's Guide to the Hadleyverse](http://adolfoalvarez.cl/the-hitchhikers-guide-to-the-hadleyverse/) - An overview of these important packages.

A properly functioning R installation must allow users to install and update packages. If they are provided with a system that is too locked down, such as a managed desktop or an overly-strict install on a High Performance Computing platform, users will be greatly inconvenienced.

#### Dissemination of research

Since anyone can author and publish a package, they provide a mechanism for researchers to disseminate their research. Here are a couple of examples from The University of Manchester.

* https://cran.r-project.org/web/packages/jmcm/index.html - jmcm: Joint Mean-Covariance Models using 'Armadillo' and S4 by [Jianxin.pan](http://www.manchester.ac.uk/research/jianxin.pan/)
* https://cran.r-project.org/web/packages/IncucyteDRC/IncucyteDRC.pdf - Dose Response Curves from Incucyte Proliferation Assays by [Phil Chapman](https://www.researchgate.net/profile/Phil_Chapman3)

This allows other researchers to make direct use of this research. In turn, this leads to additional citations, increased impact and increased likelihood of future funding.

**If we make it difficult for researchers to use R packages on our IT systems, we are directly harming teaching and research that relies on R**

#### Exercise

* Launch R 3.3.0 and install Phil Champman's package
```
install.packages('IncucyteDRC')
library(IncucyteDRC)
vignette("Overview")
```
* Now install R version 3.1.0 if you haven't done so already. This is the most recent version available (So I am told) on Manchester's managed desktop.
* Try installing Phil Chapman's package in R version 3.1.0.

### R Commander, the R interface that's a package

[R Commander](http://www.rcommander.com/) is a Graphical User Interface for R. You may be asked by some users to install it. It is actually a package so you can install it from within R.

    install.packages('Rcmdr')

### A list of repositories

* [CRAN](https://cran.r-project.org/) - The standard repository for R packages.
* [Bioconductor](http://bioconductor.org/) - The main repository for the R Bioinformatics community.
* [R-Forge](http://r-forge.r-project.org/) and [RForge](http://www.rforge.net/) - A package development environment and repository.

### Package Function reference

* `install.packages("foo")` - Install the package called 'foo'
* `installed.packages()` - Show installed packages
* `chooseCRANmirror()` - Ask the user to select a CRAN mirror
