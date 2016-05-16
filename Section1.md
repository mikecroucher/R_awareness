## Installing R on Windows

R is available for Windows, Mac OS X and Linux. For this tutorial, however, we will focus on using R in Windows since that's what the majority of users will be running.

Our first task, therefore, is to install R.

It is possible to install several versions of R at once.
They all co-exist side-by-side.

### Exercise 1
* Download and install the latest version of R for Windows (currently 3.3.0)
* Additionally, download and install versions 3.2.5 and 2.11.1. For the sake of a future exercise, ensure you leave 2.11.1 until last.

*  Download link for Window: https://cran.r-project.org/bin/windows/base/

### Exercise 2
* Launch R version 3.3.0 and work through the sections **Simple commands and calculations** and **getting help**.

## Simple commands and calculations

R is a command based system which means that you (usually) interact with it by entering commands rather than using a Graphical User Interface (GUI). Some of these commands are rather straightforward! For example, R can be used to do arithmetic

    1+1
    3*9
    377/120

R can also do all of the mathematical operations that you'd expect to see on a scientific calculator. For example, to take the square root of two:

    sqrt(2)

This is the first time we've entered a **function** in R so let's discuss some details. In the above, the **function name** is `sqrt` and the **function argument** is 2. In R, all function arguments are enclosed in parentheses `()`

R is case sensitive. For example, the correct command for square root is `sqrt(2)` with everything in lower case. Variations such as `Sqrt(2)` or `SQRT(2)` won't work (**try it!**).

R can also evaluate all the standard trigonometric functions such as `sin`, `cos` and `tan`. These take their arguments in radians rather than degrees. As such, a right angle is  `pi/2` rather than 90.

    sin(pi/2)

Unlike many scientific calculators, R's `log` function takes the natural logarithm by default.

    log(10)

If you want to calculate a logarithm to base 10, you'll need to specify the base as a second argument.

    log(100,base=10)

This shows another feature of R functions -- **named arguments**. In this case, the named argument is **base**. Since the second argument to `log` is, by design, always the base you could have simply executed

    log(100,10)

but the named argument version is more readable.

## Getting help

Built in to R is a large amount of documentation that you can call on any time. For example, if you forget the details about the `log` function described above, ask R for help

     help(log)

This will open the default web-browser to view the help file.
