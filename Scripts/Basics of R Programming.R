# Title    :: Basics of R.
#  Author  :: Dr. Ankit Deshmukh
#  DOC     :: 2024-03-12
#  Remarks :: Introduction to R.

# Main code -------------------------------------------------------------------


## Comment in R programming
Some_Test = 1
SomeName1 = 1.22
SomeName2 = "A string or name"
Some_Test = 2

## Getting help in R
# Use "?" with keyword for help in console.
# e.g.: ?seq

# Random Data
Seq_1 <- seq(1,100)
Seq_2 <- seq(from = 1, to = 100, by = 2)

## Repeat numbers
Rep_1 <- rep(7, 100)
Rep_2 <- cat(rep("GST\n", 100))

## Sample numbers
Sample_1 <- sample(1:10, 100, replace = TRUE)

# Plotting
plot(Sample_1,
     xlab = "X-axis of my plot",
     ylab = "Y-axis of my plot",
     main = "Title of my plot",
     col = "red",
     bg = "#ff55aa",
     pch = 21,
     cex = 3)


# 1. Plot scatter plot
for (ii in 1:100) {
    plot(sample(1:100, 25), pch = sample(10:24,1), col = rainbow(10), cex = sample(1:4,1))
    Sys.sleep(0.25)
}


## for loop 
for (itr in 1:20) {
    print("Geospatial analysis with R!!!")
}

## Multiple plot
graphics.off()
par(mfrow = c(3,4))

for (ii in 1:12) {
    plot(sample(1:100,20), col = ii, pch = 16)
}

## Plot random values
pdf(file = "Test Figure.pdf", width = 6, height = 4)
plot(sample(1:100, 20))
dev.off()

## For PNG files:
png(filename = "./Test Figure.png",
    width = 1000,
    height = 800,
    res = 150)

plot(sample(1:100, 20))
dev.off()

## Function in R - Bread machine as a function
B_Machine <- function(wheat, water, yiest) {
    return(wheat* water* abs(yiest))
}


## Create simple data
Data <- matrix(1:16, nrow = 4, ncol = 4)
image(Data)

my_var <- Data[3,2]
my_var1 <- Data[2:3,2]
my_var2 <- Data[2:3, 2:3]

## save CSV
write.csv(Data, file = "Data.csv")

Data2 = read.csv(file = "./Data.csv")

# barplot
data <- sample(1:100,30)
barplot(data, col = rainbow(10))

# pie chart
count <- c(7, 25, 16, 12, 10, 30)
pie(count, labels = count, col = rainbow(length(count)))


# histogram
hist(mtcars$mpg)

# Specify approximate number of bins with breaks
hist(mtcars$mpg, breaks = 10)
