###########################
## Script for training
## Reference: https://r4ds.had.co.nz/
## Created in: 2019-02-14
###########################

# Load packages
library(tidyverse)

# We use 'mpg' dataset that is inside in ggplot2 package
str(mpg)

# Plot 'displ' in x-axis and 'hwy' on the y-axis
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))

# Add colors to distinguish between different 'classes'
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = displ < 5))

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, size = class))

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, shape = class))

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, alpha = class))


ggplot(data = mpg) + geom_point(mapping = aes(x = hwy, y = cyl))
ggplot(data = mpg) + geom_point(mapping = aes(x = drv, y = class))
