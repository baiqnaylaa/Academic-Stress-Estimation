<p align="center">
  <img src="images/banner.png" alt="Project Banner" width="100%">
</p>

<div align="center">

# Estimasi Rata-Rata Tingkat Stres Akademik Mahasiswa Program Studi Statistika Universitas Mataram Menggunakan Teknik Two-Stage Cluster Sampling

![R](https://img.shields.io/badge/R-276DC3?style=flat-square&logo=r&logoColor=white)
![Method](https://img.shields.io/badge/Method-Two--Stage%20Cluster%20Sampling-success?style=flat-square)
![Analysis](https://img.shields.io/badge/Analysis-Survey%20Estimation-blue?style=flat-square)

</div>

---

# About This Project

Repository ini mendokumentasikan proses analisis survei untuk mengestimasi rata-rata tingkat stres akademik mahasiswa Program Studi Statistika Universitas Mataram menggunakan teknik **Two-Stage Cluster Sampling**.

Analisis dilakukan menggunakan bahasa pemrograman **R** dengan memanfaatkan package **readxl** dan **survey**. Proses analisis meliputi import data, pemeriksaan struktur data, pembentukan variabel cluster, data cleaning, skoring kuesioner, statistik deskriptif, deteksi outlier, pembobotan sampel, pembentukan desain survei, hingga estimasi rata-rata beserta ukuran ketelitian hasil estimasi.

Repository ini disusun sebagai dokumentasi project sehingga setiap tahapan analisis dapat dipelajari, direplikasi, dan dijadikan referensi dalam penerapan metode survei menggunakan teknik **Two-Stage Cluster Sampling**.

---

<a id="table-of-contents"></a>

# Table of Contents

- [Research Background](#research-background)
- [Research Objectives](#research-objectives)
- [Research Methodology](#research-methodology)
- [Dataset](#dataset)
- [Data Analysis](#data-analysis)
- [Results and Findings](#results-and-findings)
- [Conclusion](#conclusion)
- [References](#references)

---

<a id="research-background"></a>

# Research Background

Stres akademik merupakan salah satu permasalahan yang umum dialami mahasiswa selama menjalani proses perkuliahan. Berbagai tuntutan akademik, seperti penyelesaian tugas, ujian, target pencapaian nilai, serta kemampuan mengatur waktu dapat memengaruhi kondisi psikologis mahasiswa.

Untuk memperoleh gambaran tingkat stres akademik yang mewakili populasi, penelitian ini menggunakan pendekatan **Probability Sampling** dengan teknik **Two-Stage Cluster Sampling**. Teknik ini dipilih karena proses pemilihan sampel dilakukan secara bertahap, dimulai dari pemilihan cluster kemudian dilanjutkan dengan pemilihan responden pada cluster yang terpilih menggunakan **Simple Random Sampling (SRS)**.

Melalui pendekatan tersebut, estimasi yang diperoleh diharapkan mampu memberikan gambaran kondisi populasi secara lebih representatif serta mempertimbangkan peluang pemilihan setiap responden melalui proses pembobotan sampel.

---

<a id="research-objectives"></a>

# Research Objectives

Penelitian ini bertujuan untuk:

- Mengestimasi rata-rata tingkat stres akademik mahasiswa Program Studi Statistika Universitas Mataram.
- Menerapkan teknik **Two-Stage Cluster Sampling** dalam proses pengambilan sampel.
- Menghitung bobot sampel berdasarkan peluang pemilihan pada setiap tahap sampling.
- Mengestimasi rata-rata populasi menggunakan pendekatan **Survey Estimation**.
- Mengevaluasi kualitas hasil estimasi melalui nilai **Standard Error (SE)**, **Confidence Interval (CI)**, **Relative Standard Error (RSE)**, dan **Design Effect (DEFF)**.

---

<a id="research-methodology"></a>

# Research Methodology

Penelitian ini menggunakan pendekatan kuantitatif dengan metode survei. Populasi penelitian adalah mahasiswa Program Studi Statistika Universitas Mataram. Pengambilan sampel dilakukan menggunakan teknik **Two-Stage Cluster Sampling**, yaitu melalui dua tahap pemilihan sampel.

Pada tahap pertama dipilih dua cluster dari enam kelas yang terdapat pada populasi. Selanjutnya, pada tahap kedua dilakukan pemilihan responden menggunakan metode **Simple Random Sampling (SRS)** pada masing-masing cluster yang terpilih sehingga diperoleh **30 responden** sebagai sampel penelitian.

Data dikumpulkan menggunakan kuesioner yang terdiri atas **12 butir pernyataan** mengenai tingkat stres akademik dengan **Skala Likert 1–4**. Seluruh proses pengolahan dan analisis data dilakukan menggunakan bahasa pemrograman **R** dengan package **readxl** dan **survey**.

| Komponen | Keterangan |
|-----------|------------|
| Pendekatan Penelitian | Kuantitatif |
| Jenis Penelitian | Survei |
| Populasi | Mahasiswa Program Studi Statistika Universitas Mataram |
| Jumlah Sampel | 30 Mahasiswa |
| Cluster Terpilih | 24A dan 25B |
| Teknik Sampling | Two-Stage Cluster Sampling |
| Tahap Kedua | Simple Random Sampling (SRS) |
| Instrumen | Kuesioner (12 Pernyataan) |
| Skala Pengukuran | Likert 1–4 |
| Software | RStudio |
| Package | readxl, survey |

<a id="dataset"></a>

# Dataset

Dataset yang digunakan pada penelitian ini merupakan **data primer** yang diperoleh melalui penyebaran kuesioner kepada mahasiswa Program Studi Statistika Universitas Mataram.

Pengambilan sampel dilakukan menggunakan teknik **Two-Stage Cluster Sampling**. Pada tahap pertama dipilih dua cluster, yaitu **24A** dan **25B**. Selanjutnya, pada tahap kedua dilakukan pemilihan responden menggunakan metode **Simple Random Sampling (SRS)** sehingga diperoleh **30 responden** sebagai sampel penelitian.

Dataset terdiri atas data identitas responden dan jawaban terhadap **12 butir pernyataan** mengenai tingkat stres akademik yang diukur menggunakan **Skala Likert 1–4**.

---

<a id="data-analysis"></a>

# Data Analysis

Seluruh proses analisis dilakukan menggunakan bahasa pemrograman **R**. Tahapan analisis disusun secara sistematis mulai dari import data hingga estimasi rata-rata berdasarkan desain survei.

---

## 1. Import Data

Tahap pertama dilakukan dengan memanggil package yang diperlukan serta mengimpor dataset ke dalam R.

```r
library(readxl)
library(survey)

data <- read_excel("Estimasi Rata-Rata Tingkat Stres Akademik Mahasiswa Program Studi Statistika Universitas Mataram Menggunakan Teknik Two-Stage Sampling Responden Utama.xlsx")
```

### Keterangan

- `library(readxl)` digunakan untuk memanggil package **readxl** yang berfungsi membaca file Microsoft Excel.
- `library(survey)` digunakan untuk memanggil package **survey** yang digunakan dalam analisis data survei.
- `read_excel()` digunakan untuk mengimpor dataset ke dalam R sehingga dapat diproses pada tahap analisis berikutnya.

---

## 2. Memeriksa Struktur Data

Setelah dataset berhasil diimpor, dilakukan pemeriksaan struktur data untuk memastikan seluruh variabel telah terbaca dengan benar.

```r
str(data)

names(data)

dim(data)
```

### Keterangan

- `str(data)` digunakan untuk melihat struktur dataset beserta tipe data setiap variabel.
- `names(data)` digunakan untuk menampilkan nama seluruh variabel pada dataset.
- `dim(data)` digunakan untuk mengetahui jumlah observasi dan jumlah variabel.

---

## 3. Membentuk Variabel Cluster

Variabel **Cluster** dibentuk sebagai identitas cluster pada tahap pertama dalam teknik **Two-Stage Cluster Sampling**.

```r
data$Angkatan <- as.character(data$Angkatan)

data$Cluster <- paste0(
  substr(data$Angkatan,3,4),
  data$Kelas
)

table(data$Cluster)
```

### Keterangan

- `as.character()` digunakan untuk mengubah variabel **Angkatan** menjadi tipe karakter.
- `substr()` digunakan untuk mengambil dua digit terakhir dari tahun angkatan.
- `paste0()` digunakan untuk menggabungkan dua digit tahun angkatan dengan kode kelas sehingga terbentuk identitas cluster, yaitu **24A** dan **25B**.
- `table()` digunakan untuk menampilkan jumlah responden pada setiap cluster.

---

## 4. Data Cleaning

Tahap data cleaning dilakukan untuk memastikan kualitas data sebelum proses analisis.

```r
colSums(is.na(data))

sum(duplicated(data))
```

### Keterangan

- `is.na()` digunakan untuk mendeteksi missing value pada setiap variabel.
- `colSums()` menghitung jumlah missing value pada masing-masing variabel.
- `duplicated()` digunakan untuk mendeteksi data yang memiliki nilai duplikat.
- `sum()` digunakan untuk menghitung jumlah data duplikat yang ditemukan.

---

## 5. Skoring

Tahap skoring dilakukan untuk menghitung skor total tingkat stres akademik setiap responden berdasarkan 12 butir pernyataan.

```r
item <- data[,7:18]

item <- data.frame(
  lapply(item, function(x)
    as.numeric(as.character(x)))
)

data$Skor_Total <- rowSums(item)
```

### Keterangan

- `data[,7:18]` digunakan untuk memilih 12 item pertanyaan.
- `lapply()` digunakan untuk mengubah seluruh jawaban menjadi tipe numerik.
- `as.numeric()` mengubah data menjadi angka sehingga dapat dihitung.
- `rowSums()` digunakan untuk menjumlahkan skor seluruh item sehingga diperoleh **Skor Total** setiap responden.

---

## 6. Statistik Deskriptif

Statistik deskriptif digunakan untuk memberikan gambaran awal mengenai distribusi skor tingkat stres akademik responden.

```r
summary(data$Skor_Total)

mean(data$Skor_Total)

median(data$Skor_Total)

min(data$Skor_Total)

max(data$Skor_Total)

sd(data$Skor_Total)

hist(
  data$Skor_Total,
  main="Distribusi Skor Tingkat Stres Akademik",
  xlab="Skor Total",
  col="maroon"
)

boxplot(
  data$Skor_Total,
  main="Boxplot Skor Tingkat Stres Akademik",
  ylab="Skor Total"
)
```

### Keterangan

- `summary()` digunakan untuk menampilkan ringkasan statistik data.
- `mean()` menghitung nilai rata-rata.
- `median()` menghitung nilai tengah.
- `min()` dan `max()` digunakan untuk mengetahui nilai minimum dan maksimum.
- `sd()` menghitung simpangan baku data.
- `hist()` digunakan untuk membuat histogram distribusi skor.
- `boxplot()` digunakan untuk melihat persebaran data serta indikasi outlier.

---

## 7. Deteksi Outlier

Deteksi outlier dilakukan menggunakan metode **Interquartile Range (IQR)** untuk mengidentifikasi nilai yang berada di luar batas normal distribusi data.

```r
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
```

### Keterangan

- `quantile()` digunakan untuk menentukan kuartil pertama (Q1) dan kuartil ketiga (Q3).
- `IQR()` menghitung nilai **Interquartile Range**.
- `Lower` dan `Upper` merupakan batas bawah dan batas atas untuk mendeteksi outlier.
- `subset()` digunakan untuk menampilkan data yang berada di luar batas tersebut.

---

## 8. Pembobotan Sampel

Pembobotan dilakukan untuk memperhitungkan peluang pemilihan responden pada setiap tahap pengambilan sampel. Karena penelitian ini menggunakan teknik **Two-Stage Cluster Sampling**, setiap responden diberikan bobot berdasarkan peluang terpilihnya pada tahap pertama (cluster) dan tahap kedua (responden).

```r
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

# Peluang Tahap Pertama
P1 <- m / M

# Peluang Tahap Kedua
P2_24A <- n24A / N24A
P2_25B <- n25B / N25B

# Peluang Total
P24A <- P1 * P2_24A
P25B <- P1 * P2_25B

# Bobot Dasar
W24A <- 1 / P24A
W25B <- 1 / P25B

# Response Rate
Response_Rate <- 30 / 30

# Faktor Penyesuaian Nonresponse
F_NR <- 1 / Response_Rate

# Bobot Akhir
Bobot24A <- W24A * F_NR
Bobot25B <- W25B * F_NR
```

### Keterangan

- `M` menyatakan jumlah cluster pada populasi.
- `m` menyatakan jumlah cluster yang dipilih sebagai sampel.
- `N24A` dan `N25B` merupakan jumlah populasi pada masing-masing cluster.
- `n24A` dan `n25B` merupakan jumlah sampel pada masing-masing cluster.
- `P1` menghitung peluang pemilihan cluster pada tahap pertama.
- `P2_24A` dan `P2_25B` menghitung peluang pemilihan responden pada tahap kedua.
- `P24A` dan `P25B` merupakan peluang total pemilihan responden.
- `W24A` dan `W25B` merupakan bobot dasar yang diperoleh dari kebalikan peluang total.
- `Response_Rate` digunakan untuk menghitung tingkat respons responden.
- `F_NR` merupakan faktor penyesuaian nonresponse.
- `Bobot24A` dan `Bobot25B` merupakan bobot akhir yang akan digunakan pada analisis survei.

---

## 9. Menambahkan Bobot ke Dataset

Setelah bobot dihitung, bobot tersebut ditambahkan ke dalam dataset sehingga setiap responden memiliki bobot sesuai dengan cluster asalnya.

```r
data$Bobot <- ifelse(
  data$Cluster == "24A",
  Bobot24A,
  Bobot25B
)
```

### Keterangan

- `ifelse()` digunakan untuk memberikan bobot berdasarkan cluster responden.
- Responden pada cluster **24A** memperoleh bobot `Bobot24A`.
- Responden pada cluster **25B** memperoleh bobot `Bobot25B`.

---

## 10. Membentuk Desain Survei

Desain survei dibentuk menggunakan package **survey** agar proses estimasi memperhitungkan struktur sampling dan bobot responden.

```r
options(survey.lonely.psu = "adjust")

data$Cluster <- as.factor(data$Cluster)

desain <- svydesign(
  ids = ~Cluster,
  weights = ~Bobot,
  data = data
)
```

### Keterangan

- `options(survey.lonely.psu = "adjust")` digunakan untuk menangani kondisi cluster tunggal pada analisis survei.
- `as.factor()` mengubah variabel **Cluster** menjadi faktor.
- `svydesign()` digunakan untuk membentuk objek desain survei yang akan digunakan pada proses estimasi.

---

## 11. Estimasi Rata-Rata

Estimasi rata-rata dilakukan menggunakan fungsi `svymean()` berdasarkan desain survei yang telah dibentuk.

```r
estimasi_mean <- svymean(
  ~Skor_Total,
  desain
)
```

### Keterangan

- `svymean()` digunakan untuk menghitung estimasi rata-rata berdasarkan desain survei berbobot.
- `~Skor_Total` menunjukkan variabel yang akan diestimasi.
- `desain` merupakan objek desain survei yang telah dibentuk sebelumnya.

---

## 12. Standard Error

Standard Error digunakan untuk mengukur tingkat ketelitian dari hasil estimasi rata-rata.

```r
standard_error <- SE(estimasi_mean)
```

### Keterangan

- `SE()` digunakan untuk menghitung nilai **Standard Error** dari hasil estimasi.

---

## 13. Confidence Interval

Interval kepercayaan digunakan untuk memberikan rentang nilai yang diperkirakan memuat rata-rata populasi.

```r
confidence_interval <- confint(estimasi_mean)
```

### Keterangan

- `confint()` digunakan untuk menghitung **Confidence Interval** dari hasil estimasi.

---

## 14. Design Effect

Design Effect digunakan untuk membandingkan efisiensi desain sampling yang digunakan dengan Simple Random Sampling.

```r
design_effect <- svymean(
  ~Skor_Total,
  desain,
  deff = TRUE
)
```

### Keterangan

- `deff = TRUE` digunakan untuk menghitung nilai **Design Effect (DEFF)** pada hasil estimasi.

---

## 15. Relative Standard Error

Relative Standard Error digunakan untuk menilai tingkat ketelitian hasil estimasi dalam bentuk persentase.

```r
relative_standard_error <-
  (standard_error / coef(estimasi_mean)) * 100
```

### Keterangan

- `coef(estimasi_mean)` digunakan untuk mengambil nilai estimasi rata-rata.
- Nilai **Relative Standard Error (RSE)** diperoleh dengan membandingkan Standard Error terhadap nilai estimasi rata-rata, kemudian dinyatakan dalam persentase.

---

<p align="right">
<a href="#table-of-contents">Back to Table of Contents</a>
</p>

---

<a id="results-and-findings"></a>

# Results & Findings

Bagian ini menyajikan hasil analisis yang diperoleh berdasarkan pengolahan data menggunakan bahasa pemrograman **R**. Fokus utama penelitian ini adalah mengestimasi rata-rata tingkat stres akademik mahasiswa Program Studi Statistika Universitas Mataram menggunakan teknik **Two-Stage Cluster Sampling**. Oleh karena itu, hasil yang disajikan meliputi pemeriksaan kualitas data, gambaran umum data, pembobotan sampel, serta hasil estimasi rata-rata beserta ukuran ketelitiannya.

---

## 1. Data Quality Assessment

Sebelum dilakukan proses estimasi, kualitas data diperiksa untuk memastikan bahwa dataset memenuhi syarat untuk dianalisis.

### Tabel 1. Hasil Pemeriksaan Kualitas Data

| Komponen | Hasil |
|-----------|------:|
| Jumlah Responden | 30 |
| Jumlah Cluster | 2 |
| Missing Value | 0 |
| Data Duplikat | 0 |
| Outlier | 0 |
| Response Rate | 100% |


### Interpretasi

Hasil pemeriksaan menunjukkan bahwa seluruh data yang diperoleh telah memenuhi kualitas yang baik untuk dianalisis. Tidak ditemukan **missing value**, **data duplikat**, maupun **outlier**, sehingga seluruh responden dapat digunakan dalam proses estimasi tanpa perlu dilakukan penghapusan ataupun perbaikan data. Selain itu, **response rate sebesar 100%** menunjukkan bahwa seluruh responden yang terpilih berhasil mengisi kuesioner, sehingga data yang diperoleh mampu merepresentasikan sampel penelitian secara utuh.

---

## 2. Descriptive Overview

Sebelum dilakukan proses estimasi, statistik deskriptif digunakan untuk memberikan gambaran umum mengenai tingkat stres akademik responden.

### Tabel 2. Statistik Deskriptif

| Statistik | Nilai |
|-----------|------:|
| Jumlah Responden | 30 |
| Mean | 36.03 |
| Median | 36.00 |
| Minimum | 24 |
| Maksimum | 47 |
| Standar Deviasi | 5.35 |

### Histogram

> *(Tambahkan histogram di sini.)*

### Boxplot

> *(Tambahkan boxplot di sini.)*

### Interpretasi

Berdasarkan statistik deskriptif, rata-rata skor tingkat stres akademik responden sebesar **36,03** dengan median sebesar **36**, yang menunjukkan bahwa distribusi skor relatif seimbang. Nilai minimum sebesar **24** dan maksimum sebesar **47** memperlihatkan adanya variasi tingkat stres akademik antar mahasiswa. Selain itu, standar deviasi sebesar **5,35** menunjukkan bahwa penyebaran skor responden berada pada tingkat sedang, sehingga sebagian besar responden memiliki tingkat stres akademik yang tidak jauh berbeda dari rata-ratanya. Histogram dan boxplot juga menunjukkan bahwa distribusi data relatif merata tanpa adanya penyimpangan yang ekstrem, sehingga data layak digunakan sebagai dasar proses estimasi.

---

## 3. Sample Weighting

Karena penelitian menggunakan teknik **Two-Stage Cluster Sampling**, setiap responden memiliki peluang pemilihan yang berbeda sehingga diperlukan proses pembobotan untuk memperoleh estimasi yang representatif terhadap populasi.

### Tabel 3. Hasil Pembobotan Sampel

| Komponen | Cluster 24A | Cluster 25B |
|-----------|------------:|------------:|
| Populasi | 24 | 31 |
| Sampel | 13 | 17 |
| Peluang Tahap 1 | 0.3333 | 0.3333 |
| Peluang Tahap 2 | 0.5417 | 0.5484 |
| Peluang Total | 0.1806 | 0.1828 |
| Bobot Akhir | 5.54 | 5.47 |

### Interpretasi

Bobot sampel dihitung berdasarkan peluang pemilihan pada tahap pertama dan tahap kedua. Hasil pembobotan menunjukkan bahwa responden pada cluster **24A** memiliki bobot sebesar **5,54**, sedangkan responden pada cluster **25B** memiliki bobot sebesar **5,47**. Perbedaan bobot tersebut terjadi karena jumlah populasi dan jumlah sampel pada masing-masing cluster berbeda, sehingga peluang pemilihan responden juga berbeda. Pemberian bobot memastikan bahwa setiap responden memberikan kontribusi yang proporsional dalam proses estimasi sehingga hasil yang diperoleh mampu merepresentasikan kondisi populasi mahasiswa Program Studi Statistika Universitas Mataram.

---

## 4. Mean Estimation

Tahap utama penelitian ini adalah mengestimasi rata-rata tingkat stres akademik mahasiswa menggunakan desain survei yang telah mempertimbangkan bobot sampel.

### Tabel 4. Hasil Estimasi Rata-Rata

| Parameter | Nilai |
|-----------|------:|
| Estimasi Mean | 36.05 |
| Standard Error | 2.5085 |
| Confidence Interval 95% | 31.13 – 40.97 |
| Relative Standard Error (RSE) | 6.96% |
| Design Effect (DEFF) | 8.0464 |


### Interpretasi

Hasil estimasi menunjukkan bahwa **rata-rata tingkat stres akademik mahasiswa Program Studi Statistika Universitas Mataram diperkirakan sebesar 36,05**. Nilai ini merupakan estimasi rata-rata populasi yang diperoleh melalui teknik **Two-Stage Cluster Sampling**, sehingga tidak hanya menggambarkan kondisi 30 responden yang diteliti, tetapi juga memberikan gambaran terhadap populasi mahasiswa yang menjadi sasaran penelitian.

Nilai **Standard Error sebesar 2,5085** menunjukkan bahwa hasil estimasi memiliki tingkat kesalahan pengambilan sampel yang relatif kecil. Hal tersebut diperkuat oleh **Confidence Interval 95%**, yaitu **31,13 hingga 40,97**, yang menunjukkan bahwa rata-rata tingkat stres akademik populasi diperkirakan berada pada rentang tersebut.

Selain itu, nilai **Relative Standard Error (RSE) sebesar 6,96%** berada di bawah batas 25%, sehingga estimasi yang diperoleh memiliki tingkat presisi yang baik dan layak digunakan sebagai gambaran kondisi populasi. Sementara itu, **Design Effect (DEFF) sebesar 8,0464** menunjukkan bahwa varians estimasi menggunakan desain **Two-Stage Cluster Sampling** lebih besar dibandingkan apabila menggunakan **Simple Random Sampling (SRS)**. Meskipun demikian, penggunaan desain ini lebih sesuai dengan karakteristik populasi yang dikelompokkan berdasarkan kelas sehingga proses pengambilan sampel menjadi lebih sistematis dan representatif.

---

## 5. Key Findings

Berdasarkan hasil analisis yang telah dilakukan, diperoleh beberapa temuan utama sebagai berikut.

- Rata-rata tingkat stres akademik mahasiswa Program Studi Statistika Universitas Mataram diestimasi sebesar **36,05**.
- Seluruh data memenuhi kualitas yang baik karena tidak ditemukan **missing value**, **data duplikat**, maupun **outlier**.
- Proses pembobotan berhasil diterapkan sesuai dengan desain **Two-Stage Cluster Sampling**, sehingga hasil estimasi lebih representatif terhadap populasi.
- Nilai **Relative Standard Error (6,96%)** menunjukkan bahwa hasil estimasi memiliki tingkat presisi yang baik.
- Estimasi yang diperoleh dapat digunakan sebagai gambaran kondisi tingkat stres akademik mahasiswa Program Studi Statistika Universitas Mataram berdasarkan desain sampling yang digunakan.

---

<p align="right">
<a href="#table-of-contents">Back to Table of Contents</a>
</p>

<a id="conclusion"></a>

# Conclusion

Project ini berhasil mengimplementasikan teknik **Two-Stage Cluster Sampling** untuk mengestimasi rata-rata tingkat stres akademik mahasiswa Program Studi Statistika Universitas Mataram menggunakan bahasa pemrograman **R**.

Melalui proses import data, data cleaning, pembentukan cluster, pembobotan sampel, hingga pembentukan desain survei, diperoleh estimasi rata-rata tingkat stres akademik sebesar **36,05**. Hasil estimasi didukung oleh nilai **Standard Error**, **Confidence Interval**, dan **Relative Standard Error (RSE)** yang menunjukkan bahwa estimasi memiliki tingkat presisi yang baik sehingga dapat digunakan sebagai gambaran kondisi populasi mahasiswa Program Studi Statistika Universitas Mataram.

Project ini menunjukkan bagaimana teknik **Two-Stage Cluster Sampling** dapat diimplementasikan secara sistematis menggunakan **R** untuk menghasilkan estimasi yang lebih representatif terhadap populasi dibandingkan perhitungan rata-rata sampel secara langsung.

---

## Project Resources

| Resource | Availability |
|----------|--------------|
| 📋 Questionnaire | (https://forms.gle/yVQGRZocdai7aoiR8) |
| 💻 Source Code | `script/Analisis_Estimasi_Tingkat_Stres_Akademik.R` |
| 📊 Dataset | Private |
| 📈 Analysis Output | Available in this repository |

⭐ **Thank you for visiting this repository.**

</p>
