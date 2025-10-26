dane <- read.csv("../adn-2026/data/exercise2.csv", na.strings = c("NA", "NULL", "-9", "-1"))

print(paste("Z1: ", mean(dane[,"AttendanceRate"], na.rm = T)))
print(paste("Z2: ", median(dane[,"MathScore"], na.rm = T)))
print(paste("Z3: ", with(dane, cor(AttendanceRate, MathScore, use = "complete.obs"))))

dane2 <- na.omit(dane)

print(paste("Z4:", nrow(dane2)))