#If you tried to install RCmdr in R 3.2.2, it will have failed because a package called pbkr is not available. Here is how we can investigate pbkrtest using R

#By default, avaiulable.packages() returns only packages that are availabnle for your version of R and Operating system. This is done by setting the filters argument to include R_version and OS_type among others. If we reset filters to only exclude duplicates (hence only including the latest version), we get everything.

packages = available.packages(filter=c("duplicates"))

#Convert to data frame for ease of use
packages = data.frame(packages)

#Search for the dependencies of pbkrtest
result = packages[packages$Package=="pbkrtest",]["Depends"]

print(result)

#At time of writing, this returned

#                                Depends
# pbkrtest R (>= 3.2.3), lme4 (>= 1.1.10)
