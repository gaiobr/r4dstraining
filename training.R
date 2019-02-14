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

# Plot facets for categorical variables
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2) # Add separated plots to each category on 'class'

# Plot facets grouped by combination of two variables
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)

# Plot facets grouped by one variable (simillar to facet_wrap with one variable)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)

# Plot differente geoms - plots
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, color = drv, linetype = drv)) +
  geom_point(mapping = aes(x = displ, y = hwy, color = drv))

# The same plot before, but with info into ggplot function
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_smooth() +
  geom_point()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class)) +
  geom_smooth()

str(mpg)
