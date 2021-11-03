library(hexSticker)
library(magick)
library(ggplot2)
r_logo <- image_read("Rlogo.svg")
file_image <- "../hexImage.svg"

logo <- image_read("Rlogo.svg")

p <- ggplot(aes(x = mpg, y = wt), data = mtcars) + geom_point()

sticker <- sticker(subplot = p, 
                   s_width = 1.2,
                   s_x = 0.9,
                   s_y = 1.1,
                   package = "Basics", 
                   p_color = "#152c52", 
                   p_size = 20, 
                   p_x = 1, 
                   p_y = 0.5,
                   h_size = 5, 
                   h_fill = "white", 
                   h_color = "#152c52", 
                   url = "www.quantargo.com/courses/course-r-introduction/01-basics", 
                   u_color = "#152c52", 
                   u_size = 1,
                   spotlight = FALSE, 
                   filename = file_image)

p <- ggplot() + theme_void() + theme_transparent()
sticker(p, 
        package="Basics", 
        p_y = 0.6,
        filename = file_image,
        p_color = "#152c52", 
        h_fill = "white", 
        h_color = "#152c52"
        #url = "www.quantargo.com/courses/course-r-introduction/01-basics", 
        #u_color = "#152c52", 
        #u_size = 1
        )

image_read(file_image)
