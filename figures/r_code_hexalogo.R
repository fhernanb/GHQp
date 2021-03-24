install.packages("hexSticker")

library(ggplot2)
p <- ggplot(aes(x = mpg, y = wt), data = mtcars) + geom_point()

library(hexSticker)
s <- sticker(subplot="figures/tijeras.png",
             package="GHQp",
             p_color="gray66",
             h_color="mediumpurple4",
             p_size=25, 
             s_x=1.1, s_y=0.7, 
             s_width=0.6, s_height=0.4,
             filename="figures/logo.png")
plot(s)
