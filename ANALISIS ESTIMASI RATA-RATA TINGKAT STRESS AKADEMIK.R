#=========================================================
# PROJECT UAS TEKNIK SAMPLING
# Estimasi Rata-Rata Tingkat Stres Akademik Mahasiswa
# Program Studi Statistika Universitas Mataram
# Menggunakan Teknik Two-Stage Cluster Sampling
#=========================================================

#=========================================================
# 1. MEMANGGIL PACKAGE
#=========================================================

library(readxl)
library(survey)

#=========================================================
# 2. IMPORT DATA
#=========================================================

data <- read_excel("D:/SEMESTER 4/TEKNIK SAMPLING/UAS/Estimasi Rata-Rata Tingkat Stres Akademik Mahasiswa Program Studi Statistika Universitas Mataram Menggunakan Teknik Two-Stage Sampling  Responden Utama.xlsx")

# 3. MEMERIKSA STRUKTUR DATA
#=========================================================

str(data)
names(data)
dim(data)

#=========================================================
# 4. MEMBENTUK VARIABEL CLUSTER
#=========================================================

data$Angkatan <- as.character(data$Angkatan)

data$Cluster <- paste0(
  substr(data$Angkatan, 3, 4),
  data$Kelas
)

cat("==============================\n")
cat("PEMERIKSAAN CLUSTER\n")
cat("==============================\n")

table(data$Cluster)

#=========================================================
# 5. DATA CLEANING
#=========================================================

cat("==============================\n")
cat("DATA CLEANING\n")
cat("==============================\n")

cat("\nMissing Value\n")
print(colSums(is.na(data)))

cat("\nJumlah Missing Value :", sum(is.na(data)), "\n")

cat("\nJumlah Data Duplikat :", sum(duplicated(data)), "\n")

#=========================================================
# 6. SKORING
#=========================================================

item <- data[,7:18]

item <- data.frame(
  lapply(item, function(x)
    as.numeric(as.character(x)))
)

data$Skor_Total <- rowSums(item)

#=========================================================
# 7. STATISTIK DESKRIPTIF
#=========================================================

cat("\n==============================\n")
cat("STATISTIK DESKRIPTIF\n")
cat("==============================\n")

summary(data$Skor_Total)

cat("\nMean   :", mean(data$Skor_Total))
cat("\nMedian :", median(data$Skor_Total))
cat("\nMinimum:", min(data$Skor_Total))
cat("\nMaximum:", max(data$Skor_Total))
cat("\nSD     :", sd(data$Skor_Total), "\n")

# Histogram

hist(
  data$Skor_Total,
  main = "Distribusi Skor Tingkat Stres Akademik",
  xlab = "Skor Total",
  col = "maroon",
  border = "white"
)

# Boxplot

boxplot(
  data$Skor_Total,
  main = "Boxplot Skor Tingkat Stres Akademik",
  ylab = "Skor Total",
  col = "lightblue"
)

#=========================================================
# 8. DETEKSI OUTLIER
#=========================================================

Q1 <- quantile(data$Skor_Total,0.25)

Q3 <- quantile(data$Skor_Total,0.75)

IQR_value <- IQR(data$Skor_Total)

Lower <- Q1 - 1.5*IQR_value

Upper <- Q3 + 1.5*IQR_value

outlier <- subset(
  data,
  Skor_Total < Lower |
    Skor_Total > Upper
)

cat("\nJumlah Outlier :", nrow(outlier), "\n")

#=========================================================
# 9. PEMBOBOTAN
#=========================================================

# Jumlah Cluster Populasi
M <- 6

# Cluster Terpilih
m <- 2

# Populasi Tiap Cluster
N24A <- 24
N25B <- 31

# Sampel Tiap Cluster
n24A <- 13
n25B <- 17

# Peluang Tahap 1
P1 <- m/M

# Peluang Tahap 2
P2_24A <- n24A/N24A
P2_25B <- n25B/N25B

# Peluang Total
P24A <- P1 * P2_24A
P25B <- P1 * P2_25B

# Bobot Dasar
W24A <- 1/P24A
W25B <- 1/P25B

# Response Rate
Response_Rate <- 30/30

# Faktor Penyesuaian Nonresponse
F_NR <- 1/Response_Rate

# Bobot Akhir
Bobot24A <- W24A * F_NR
Bobot25B <- W25B * F_NR

# Menambahkan Bobot

data$Bobot <- ifelse(
  data$Cluster=="24A",
  Bobot24A,
  Bobot25B
)

cat("\n==============================\n")
cat("HASIL PEMBOBOTAN\n")
cat("==============================\n")

cat("\nPeluang Tahap 1 :", round(P1,4), "\n")

cat("\nCluster 24A\n")
cat("Peluang Tahap 2 :", round(P2_24A,4), "\n")
cat("Peluang Total   :", round(P24A,4), "\n")
cat("Bobot Akhir     :", round(Bobot24A,2), "\n")

cat("\nCluster 25B\n")
cat("Peluang Tahap 2 :", round(P2_25B,4), "\n")
cat("Peluang Total   :", round(P25B,4), "\n")
cat("Bobot Akhir     :", round(Bobot25B,2), "\n")

#=========================================================
# PEMERIKSAAN HASIL PEMBOBOTAN
#=========================================================

cat("\nDistribusi Bobot\n")
print(table(data$Cluster, data$Bobot))

cat("\nContoh Data Setelah Pembobotan\n")
print(head(data[, c(
  "Nama Lengkap",
  "Cluster",
  "Skor_Total",
  "Bobot"
)]))

cat("\n==============================\n")
cat("RINGKASAN ANALISIS\n")
cat("==============================\n")

cat("Jumlah Responden :", nrow(data), "\n")
cat("Jumlah Cluster   :", length(unique(data$Cluster)), "\n")
cat("Response Rate    :", Response_Rate * 100, "%\n")

#=========================================================
# 10. ANALISIS ESTIMASI
#=========================================================

options(survey.lonely.psu="adjust")

data$Cluster <- as.factor(data$Cluster)

desain <- svydesign(
  ids = ~Cluster,
  weights = ~Bobot,
  data = data
)

# Estimasi Mean

estimasi_mean <- svymean(
  ~Skor_Total,
  desain
)

# Standard Error

standard_error <- SE(estimasi_mean)

# Confidence Interval

confidence_interval <- confint(estimasi_mean)

# Design Effect

design_effect <- svymean(
  ~Skor_Total,
  desain,
  deff = TRUE
)

# Relative Standard Error

relative_standard_error <-
  (standard_error / coef(estimasi_mean)) * 100

#=========================================================
# 11. HASIL AKHIR
#=========================================================

cat("\n==============================\n")
cat("HASIL ESTIMASI\n")
cat("==============================\n")

cat("\nEstimasi Rata-rata\n")
print(round(coef(estimasi_mean),2))

cat("\nStandard Error\n")
print(round(standard_error,4))

cat("\nConfidence Interval 95%\n")
print(round(confidence_interval,2))

cat("\nRelative Standard Error (%)\n")
print(round(relative_standard_error,2))

cat("\nDesign Effect\n")
print(design_effect)

