## The importance of packages

### Installing your first package

Launch R 3.3.0 and run the following lines of code to produce a basic scatter plot.

    x <- 1:9
    y <- c(1,2,3,4,5,4,3,2,1)
    plot(x,y)

A colleague tells you that there is a better function for plotting.
She shows you on her machine. It looks nicer so you try it yourself:

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

Note: The user doesn't need admin rights for these installs but they will need somewhere they can write to in order to create a **personal library**.

### Which packages are installed?

To see which packages are installed, execute

    installed.packages()

### Using an installed package

We've installed the **ggplot2** package but we need to do a little more in order to use it. We nned to use the **library** function

    library(ggplot2)

We can now use all of the functions in the ggplot2 package - one of which is the qplot2 function.

    qplot(x,y)

### The extent of the ggplot2 package

The ggplot2 package is a big deal! It's *much* more than this simple function. It's extensively used for publication quality graphics by 1000s of researchers.
There have been entire books written about this one package

<a rel="nofollow" href="http://www.amazon.co.uk/gp/product/331924275X/ref=as_li_tl?ie=UTF8&camp=1634&creative=19450&creativeASIN=331924275X&linkCode=as2&tag=walkingrandom-21"><img border="0" src="http://ws-eu.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=331924275X&Format=_SL250_&ID=AsinImage&MarketPlace=GB&ServiceVersion=20070822&WS=1&tag=walkingrandom-21" ></a><img src="http://ir-uk.amazon-adsystem.com/e/ir?t=walkingrandom-21&l=as2&o=2&a=331924275X" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />
