library(readxl)
A_stars <- read_excel("~/Desktop/MATH363/ExoplanetData.xlsx", 
                            sheet = "A")
B_stars <- read_excel("~/Desktop/MATH363/ExoplanetData.xlsx", 
                       sheet = "B")
F_stars <- read_excel("~/Desktop/MATH363/ExoplanetData.xlsx", 
                       sheet = "F")
G_stars <- read_excel("~/Desktop/MATH363/ExoplanetData.xlsx", 
                       sheet = "G")
K_stars <- read_excel("~/Desktop/MATH363/ExoplanetData.xlsx", 
                       sheet = "K")
M_stars <- read_excel("~/Desktop/MATH363/ExoplanetData.xlsx", 
                       sheet = "M")
Stars_v_planets_all <- read_excel("~/Desktop/MATH363/ExoplanetData.xlsx", 
                                  sheet = "Stars v Planet")

A_masses<-A_stars$pl_bmasse
B_masses<-B_stars$pl_bmasse
F_masses<-F_stars$pl_bmasse
G_masses<-G_stars$pl_bmasse
K_masses<-K_stars$pl_bmasse
M_masses<-M_stars$pl_bmasse

star_type<-c("G Stars", "A Stars", "B Stars", "F Stars", "K Stars", "M Stars")

hist(G_masses, col = "orange", main = "Histogram of Exoplanet Masses", 
     xlab = "Exoplanet Masses (xEarth Mass)", breaks = 100)
hist(A_masses, col = "red", add = TRUE, breaks = 100 )
hist(B_masses, col = "violet", add = TRUE, breaks = 100)
hist(F_masses, col = "pink", add = TRUE, breaks = 100)
hist(K_masses, col = "green", add = TRUE, breaks = 100)
hist(M_masses, col = "blue", add = TRUE, breaks = 100)
legend("topright", title = "Star Types", legend=star_type,
       fill=c("orange", "red", "violet", "pink", "green", "blue") , cex=1)



boxplot(G_masses, A_masses, B_masses, F_masses, K_masses, M_masses, 
        names = star_type, ylab = "Exoplanet Masses (xEarth Mass)", 
        col = topo.colors(6))

boxplot(Stars_v_planets_all$pl_bmasse)

summary(A_masses)
summary(B_masses)
summary(F_masses)
summary(G_masses)
summary(K_masses)
summary(M_masses)

set.seed(13)
x<- rexp(1269)
y<- sort(Stars_v_planets_all$pl_bmasse)
qqplot(x, y, xlab = "Theoretical Quantiles (Exponential)", ylab = "Sample Quantiles", main = 
         "Q-Q Plot of Exoplanet Mass Distributions")

