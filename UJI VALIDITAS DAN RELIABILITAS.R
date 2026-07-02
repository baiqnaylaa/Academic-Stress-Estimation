library(readxl)
library(psych)
data <- read_excel("D:/SEMESTER 4/TEKNIK SAMPLING/UAS/Estimasi Rata-Rata Tingkat Stres Akademik Mahasiswa Program Studi Statistika Universitas Mataram Menggunakan Teknik Two-Stage Sampling  (Jawaban).xlsx")
names(data)
item <- data[,7:18]
hasil <- alpha(item)

hasil
hasil$alpha.drop
hasil$total
hasil$item.stats

library(psych)

item.total <- item.total(item)
corr.test(item)

library(readxl)
library(psych)

# Import data
data <- read_excel("C:/Users/ACER/Downloads/Formulir tanpa judul (Jawaban).xlsx")

# Melihat nama variabel
names(data)

# Mengambil item kuesioner (kolom 6-17)
item <- data[, 6:17]

# Uji reliabilitas (Cronbach Alpha)
hasil <- alpha(item)

# Hasil
hasil
hasil$alpha.drop
hasil$total
hasil$item.stats

# Corrected Item-Total Correlation
hasil$item.stats$r.cor

# Item-Total Statistics
hasil$item.stats
# Korelasi antar item beserta signifikansinya
corr.test(item)

