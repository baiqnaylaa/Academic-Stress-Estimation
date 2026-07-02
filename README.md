<p align="center">
  <img src="images/banner.png" width="100%">
</p>

<div align="center">

# Estimasi Rata-Rata Tingkat Stres Akademik Mahasiswa Program Studi Statistika Universitas Mataram Menggunakan Teknik Two-Stage Sampling

![R](https://img.shields.io/badge/R-276DC3?style=flat-square&logo=r&logoColor=white)
![Survey](https://img.shields.io/badge/Survey%20Sampling-Two--Stage%20Sampling-2E8B57?style=flat-square)
![Statistics](https://img.shields.io/badge/Statistics-Survey%20Estimation-1E90FF?style=flat-square)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=flat-square)

</div>

---

# About This Project

Penelitian ini bertujuan untuk mengestimasi rata-rata tingkat stres akademik mahasiswa Program Studi Statistika Universitas Mataram menggunakan **teknik Two-Stage Sampling**. Teknik ini merupakan salah satu metode **Probability Sampling** yang dilakukan melalui dua tahap pemilihan sampel, yaitu pemilihan klaster pada tahap pertama dan pemilihan unit sampel pada tahap kedua. Pengolahan data dilakukan menggunakan bahasa pemrograman **R** dengan memanfaatkan package **survey** untuk memperoleh estimasi rata-rata populasi beserta ukuran ketelitian estimasinya. Selain itu, penelitian ini juga melakukan uji validitas dan reliabilitas instrumen sebelum proses pengumpulan data guna memastikan bahwa kuesioner yang digunakan layak sebagai alat ukur.

Repositori ini berisi seluruh tahapan penelitian, mulai dari penyusunan instrumen, pengujian validitas dan reliabilitas, pengolahan data, analisis menggunakan R, hingga interpretasi hasil estimasi.

---

# Project Information

| Komponen | Keterangan |
|-----------|------------|
| **Judul Penelitian** | Estimasi Rata-Rata Tingkat Stres Akademik Mahasiswa Program Studi Statistika Universitas Mataram Menggunakan Teknik Two-Stage Sampling |
| **Jenis Penelitian** | Survei Statistik |
| **Pendekatan** | Kuantitatif |
| **Populasi** | Mahasiswa Program Studi Statistika Universitas Mataram |
| **Jumlah Sampel** | 30 Mahasiswa |
| **Teknik Sampling** | Two-Stage Sampling |
| **Metode Estimasi** | Estimasi Rata-Rata Populasi |
| **Software** | RStudio |
| **Package Utama** | survey, psych, readxl |
| **Output** | Estimasi Mean, Standard Error, Confidence Interval, Relative Standard Error, dan Design Effect |

---

# Table of Contents

- [Research Background](#research-background)
- [Research Objectives](#research-objectives)
- [Research Methodology](#research-methodology)
- [Validity Test](#validity-test)
- [Dataset](#dataset)
- [Data Analysis](#data-analysis)
- [Results and Findings](#results-and-findings)
- [Conclusion](#conclusion)

---

<a id="research-background"></a>

# Research Background

Stres akademik merupakan salah satu permasalahan yang umum dialami mahasiswa selama menjalani proses perkuliahan. Berbagai tuntutan akademik, seperti penyelesaian tugas, pelaksanaan ujian, pencapaian target nilai, serta kemampuan mengatur waktu dapat memengaruhi kondisi psikologis mahasiswa. Tingkat stres yang tinggi tidak hanya berdampak pada kesehatan mental, tetapi juga dapat memengaruhi motivasi belajar dan prestasi akademik. Untuk memperoleh gambaran tingkat stres akademik yang mewakili populasi mahasiswa Program Studi Statistika Universitas Mataram, diperlukan metode pengambilan sampel yang mampu memberikan peluang terpilih yang terukur bagi setiap unit populasi. Oleh karena itu, penelitian ini menerapkan **Two-Stage Sampling**, yaitu teknik probability sampling yang dilakukan melalui dua tahap pemilihan sampel.

Tahap pertama dilakukan dengan memilih klaster berupa kelas mahasiswa, kemudian pada tahap kedua dipilih responden dari setiap klaster menggunakan metode **Simple Random Sampling (SRS)**. Pendekatan ini memungkinkan proses pengambilan sampel menjadi lebih efisien tanpa mengurangi representativitas hasil penelitian. Analisis dilakukan menggunakan package **survey** pada bahasa pemrograman **R** sehingga estimasi yang dihasilkan tidak hanya berupa rata-rata populasi, tetapi juga dilengkapi dengan ukuran ketelitian estimasi seperti **Standard Error (SE)**, **Confidence Interval (CI)**, **Relative Standard Error (RSE)**, dan **Design Effect (DEFF)**.

---

<a id="research-objectives"></a>

# Research Objectives

Penelitian ini bertujuan untuk:

- Mengestimasi rata-rata tingkat stres akademik mahasiswa Program Studi Statistika Universitas Mataram menggunakan teknik **Two-Stage Sampling**.
- Mengimplementasikan metode **Probability Sampling** melalui desain **Two-Stage Sampling** dalam proses pengambilan sampel.
- Menghitung bobot sampel berdasarkan peluang pemilihan pada setiap tahap pengambilan sampel.
- Mengestimasi rata-rata populasi menggunakan package **survey** pada bahasa pemrograman **R**.
- Mengevaluasi kualitas hasil estimasi menggunakan **Standard Error (SE)**, **Confidence Interval (CI)**, **Relative Standard Error (RSE)**, dan **Design Effect (DEFF)**.

---

<a id="research-methodology"></a>

# Research Methodology

Penelitian ini menggunakan pendekatan **kuantitatif** dengan metode **survei statistik**. Teknik pengambilan sampel yang digunakan adalah **Two-Stage Sampling**, yaitu teknik probability sampling yang dilakukan melalui dua tahap pemilihan sampel. Pada tahap pertama dilakukan pemilihan **cluster** berupa kelas mahasiswa Program Studi Statistika Universitas Mataram. Selanjutnya, pada tahap kedua dipilih sejumlah mahasiswa dari setiap cluster menggunakan metode **Simple Random Sampling (SRS)** sehingga setiap anggota populasi dalam cluster terpilih memiliki peluang yang sama untuk menjadi sampel.

Sebelum proses pengumpulan data dilakukan, instrumen penelitian terlebih dahulu diuji melalui **uji validitas** dan **uji reliabilitas** untuk memastikan bahwa setiap butir pernyataan mampu mengukur variabel penelitian secara tepat dan konsisten. Setelah data terkumpul, dilakukan proses pengolahan data menggunakan bahasa pemrograman **R**. Analisis meliputi pembentukan desain survei, pemberian bobot sampel, hingga estimasi rata-rata populasi beserta ukuran ketelitian estimasinya.

---

## Research Workflow

```
Population
      │
      ▼
Two-Stage Sampling
      │
      ▼
Questionnaire Distribution
      │
      ▼
Validity Test
      │
      ▼
Reliability Test
      │
      ▼
Data Collection
      │
      ▼
Data Processing
      │
      ▼
Survey Estimation
      │
      ▼
Interpretation
```

---

<a id="validity-test"></a>

# Validity Test

Sebelum digunakan dalam penelitian, instrumen kuesioner diuji terlebih dahulu untuk memastikan setiap butir pertanyaan mampu mengukur tingkat stres akademik secara tepat. Selain itu, dilakukan uji reliabilitas untuk mengetahui tingkat konsistensi antarbutir pertanyaan.

### Syntax

```r
library(readxl)
library(psych)

data <- read_excel("DATA UJI VALIDITAS DAN REABILITAS.xlsx")

item <- data[,7:18]

hasil <- alpha(item)

hasil

hasil$item.stats

hasil$alpha.drop
```

### Keterangan

- `library(readxl)` digunakan untuk membaca file Excel.
- `library(psych)` digunakan untuk melakukan uji validitas dan reliabilitas.
- `read_excel()` digunakan untuk mengimpor dataset ke dalam R.
- `item <- data[,7:18]` digunakan untuk memilih seluruh butir pertanyaan kuesioner.
- `alpha(item)` digunakan untuk menghitung nilai **Cronbach's Alpha**.
- `hasil` digunakan untuk menampilkan hasil uji reliabilitas.
- `hasil$item.stats` digunakan untuk menampilkan nilai **Corrected Item-Total Correlation** setiap item.
- `hasil$alpha.drop` digunakan untuk melihat perubahan nilai Cronbach's Alpha apabila suatu item dihapus.

> **Catatan**
>
> Output dan interpretasi uji validitas serta reliabilitas disajikan pada bagian **Results and Findings**.

# Dataset

Dataset yang digunakan merupakan hasil pengumpulan data melalui penyebaran kuesioner kepada mahasiswa Program Studi Statistika Universitas Mataram yang menjadi responden penelitian.

Data disusun dalam format **Microsoft Excel (.xlsx)** sebelum diimpor ke dalam perangkat lunak **RStudio** untuk dilakukan proses pengolahan dan analisis.

---

## Dataset Information

| Komponen | Keterangan |
|----------|------------|
| Sumber Data | Hasil penyebaran kuesioner |
| Populasi | Mahasiswa Program Studi Statistika Universitas Mataram |
| Jumlah Responden | 30 Mahasiswa |
| Teknik Sampling | Two-Stage Sampling |
| Jumlah Item | 12 Pernyataan |
| Skala Pengukuran | Skala Likert 1–5 |
| Variabel Utama | Total Skor Tingkat Stres Akademik |
| Format Data | Microsoft Excel (.xlsx) |

---

## Skala Pengukuran

Instrumen penelitian menggunakan **Skala Likert 4 poin** untuk mengukur tingkat stres akademik mahasiswa. Setiap responden diminta memilih salah satu jawaban yang paling sesuai dengan kondisi yang dirasakan.

| Skor | Kategori |
|:----:|-------------------------|
| 1 | Sangat Tidak Setuju |
| 2 | Tidak Setuju |
| 3 | Setuju |
| 4 | Sangat Setuju |

Skor dari seluruh butir pernyataan dijumlahkan untuk memperoleh **Skor Total Tingkat Stres Akademik**. Semakin tinggi skor yang diperoleh responden, semakin tinggi tingkat stres akademik yang dirasakan.

---

<p align="right">
<a href="#table-of-contents">Back to Top ↑</a>
</p>

<a id="data-analysis"></a>

# Data Analysis

Analisis data dilakukan menggunakan bahasa pemrograman **R** dengan pendekatan **survey sampling**. Tahapan analisis meliputi pemeriksaan data, analisis deskriptif, visualisasi data, pembentukan bobot sampel, penyusunan desain survei, hingga estimasi rata-rata tingkat stres akademik.



### Import Data

```r
library(readxl)
library(dplyr)
library(ggplot2)
library(survey)

data <- read_excel("Estimasi Rata-Rata Tingkat Stres Akademik Mahasiswa Program Studi Statistika Universitas Mataram Menggunakan Teknik Two-Stage Sampling.xlsx")
```

**Keterangan**

- `library()` digunakan untuk memanggil package yang diperlukan selama analisis.
- `read_excel()` digunakan untuk mengimpor dataset ke dalam R.


### Pemeriksaan Data

```r
str(data)

head(data)

sapply(data, class)

colSums(is.na(data))

sum(duplicated(data))
```

**Keterangan**

- `str()` digunakan untuk melihat struktur dan tipe data setiap variabel.
- `head()` digunakan untuk menampilkan beberapa baris pertama dataset.
- `sapply(..., class)` digunakan untuk memeriksa tipe data setiap variabel.
- `colSums(is.na())` digunakan untuk mendeteksi data yang hilang (*missing value*).
- `duplicated()` digunakan untuk memeriksa adanya data yang terduplikasi.


### Analisis Deskriptif

```r
summary(data$Total_Skor)

sd(data$Total_Skor)

var(data$Total_Skor)
```

**Keterangan**

- `summary()` digunakan untuk memperoleh ringkasan statistik data.
- `sd()` digunakan untuk menghitung simpangan baku.
- `var()` digunakan untuk menghitung nilai ragam (varians).


### Visualisasi Data

```r
ggplot(data, aes(x = Total_Skor)) +
  geom_histogram(binwidth = 2)

ggplot(data, aes(y = Total_Skor)) +
  geom_boxplot()
```

**Keterangan**

- `geom_histogram()` digunakan untuk melihat distribusi skor stres akademik.
- `geom_boxplot()` digunakan untuk melihat persebaran data serta mendeteksi kemungkinan adanya *outlier*.



### Pembentukan Bobot dan Desain Survei

```r
data$weight <- 1 / data$probability

design <- svydesign(
  ids = ~Cluster,
  weights = ~weight,
  data = data
)
```

**Keterangan**

- `data$weight` digunakan untuk menghitung bobot sampel berdasarkan peluang pemilihan.
- `svydesign()` digunakan untuk membentuk objek desain survei sesuai metode **Two-Stage Sampling**.



### Estimasi Rata-rata Populasi

```r
svymean(~Total_Skor, design)

SE(svymean(~Total_Skor, design))

confint(svymean(~Total_Skor, design))

estimate <- svymean(~Total_Skor, design)

coef(estimate)

SE(estimate)

(SE(estimate) / coef(estimate)) * 100

svymean(~Total_Skor, design, deff = TRUE)
```

**Keterangan**

- `svymean()` digunakan untuk mengestimasi rata-rata tingkat stres akademik populasi.
- `SE()` digunakan untuk menghitung **Standard Error (SE)**.
- `confint()` digunakan untuk membentuk **Confidence Interval (CI)** 95%.
- `coef()` digunakan untuk memperoleh nilai estimasi rata-rata.
- `(SE/Estimate) × 100` digunakan untuk menghitung **Relative Standard Error (RSE)**.
- `deff = TRUE` digunakan untuk memperoleh nilai **Design Effect (DEFF)**.

> **Catatan**
>
> Seluruh output analisis disajikan pada bagian **Results and Findings**.

<a id="results-and-findings"></a>

# Results and Findings

Bagian ini menyajikan hasil pengujian instrumen penelitian, statistik deskriptif, visualisasi data, serta hasil estimasi rata-rata tingkat stres akademik mahasiswa menggunakan teknik **Two-Stage Sampling** dengan bantuan bahasa pemrograman **R**.

## Validity Test

Uji validitas dilakukan menggunakan **Corrected Item-Total Correlation** untuk mengetahui kemampuan setiap butir pernyataan dalam mengukur variabel tingkat stres akademik.

### Hasil Uji Validitas

| Item | Corrected Item-Total Correlation | Status |
|:---:|:---:|:---:|
| 1 | 0.647 | Valid |
| 2 | 0.214 | Valid |
| 3 | 0.372 | Valid |
| 4 | 0.866 | Valid |
| 5 | 0.742 | Valid |
| 6 | 0.555 | Valid |
| 7 | 0.687 | Valid |
| 8 | 0.759 | Valid |
| 9 | 0.534 | Valid |
| 10 | 0.924 | Valid |
| 11 | 0.758 | Valid |
| 12 | 0.450 | Valid |

### Interpretasi

Berdasarkan hasil uji validitas, seluruh butir pernyataan dinyatakan **valid** sehingga dapat digunakan dalam penelitian. Hal ini menunjukkan bahwa setiap pertanyaan pada kuesioner mampu menggambarkan kondisi stres akademik mahasiswa, mulai dari tekanan akibat tugas, ujian, pengelolaan waktu, hingga dampaknya terhadap proses belajar. Dengan demikian, instrumen yang digunakan telah layak untuk mengumpulkan data penelitian.

## Reliability Test

Reliabilitas instrumen diukur menggunakan metode **Cronbach's Alpha**.

### Hasil Uji Reliabilitas

| Metode | Nilai | Kategori |
|---------|------:|----------|
| Cronbach's Alpha | **0.861** | Reliabel |

### Interpretasi

Nilai **Cronbach's Alpha sebesar 0,861** menunjukkan bahwa kuesioner memiliki tingkat konsistensi yang tinggi. Artinya, jawaban responden pada setiap butir pernyataan saling mendukung dalam mengukur tingkat stres akademik sehingga data yang diperoleh dapat dipercaya untuk digunakan pada tahap analisis berikutnya.

## Descriptive Statistics

### Hasil Statistik Deskriptif

| Statistik | Nilai |
|-----------|------:|
| Jumlah Responden | 30 |
| Minimum | 24 |
| Kuartil 1 | 32.25 |
| Median | 36.00 |
| Mean | 36.03 |
| Kuartil 3 | 39.00 |
| Maksimum | 47 |
| Standar Deviasi | 5.35 |

### Interpretasi

Hasil statistik deskriptif menunjukkan bahwa skor stres akademik mahasiswa berada pada rentang **24 hingga 47**, dengan rata-rata sebesar **36,03**. Nilai rata-rata yang hampir sama dengan median menunjukkan bahwa penyebaran data cukup seimbang. Hal ini menggambarkan bahwa sebagian besar mahasiswa memiliki tingkat stres akademik yang relatif serupa. Walaupun terdapat perbedaan skor antarresponden, perbedaannya tidak terlalu jauh sehingga kondisi stres akademik mahasiswa pada sampel penelitian cenderung merata.

## Histogram

<p align="center">
<img src="images/HISTOGRAM SKOR TINGKAT STRES.png" width="700">
</p>

### Interpretasi

Histogram menunjukkan bahwa sebagian besar skor responden berada pada kisaran **32–40**. Kondisi ini menunjukkan bahwa mayoritas mahasiswa mengalami tingkat stres akademik pada kategori sedang. Hanya sedikit mahasiswa yang memiliki skor sangat rendah maupun sangat tinggi. Hal tersebut mengindikasikan bahwa tekanan akademik merupakan kondisi yang cukup umum dirasakan oleh mahasiswa Program Studi Statistika Universitas Mataram.

## Boxplot

<p align="center">
<img src="images/BOXPLOT SKOR TINGKAT STRES.png" width="500">
</p>

### Interpretasi

Berdasarkan boxplot, tidak ditemukan data yang termasuk **outlier**. Seluruh skor responden masih berada dalam batas yang wajar sehingga tidak ada data yang perlu dihapus atau diperlakukan secara khusus. Dengan demikian, seluruh data dapat digunakan dalam proses estimasi rata-rata tingkat stres akademik.

## Sampling Weight

### Hasil Pembobotan

| Cluster | Populasi | Sampel | Bobot Akhir |
|---------|---------:|--------:|------------:|
| 24A | 24 | 13 | 5.54 |
| 25B | 31 | 17 | 5.47 |

### Interpretasi

Pembobotan dilakukan untuk menyesuaikan peluang terpilihnya setiap responden pada proses pengambilan sampel. Karena jumlah mahasiswa pada masing-masing kelas berbeda, bobot yang diperoleh juga sedikit berbeda. Dengan adanya pembobotan ini, hasil estimasi tidak hanya mewakili 30 responden yang diteliti, tetapi juga dapat menggambarkan kondisi seluruh mahasiswa Program Studi Statistika Universitas Mataram.

## Population Mean Estimation

### Hasil Estimasi

| Parameter | Nilai |
|-----------|------:|
| Estimasi Rata-rata Populasi | **36.05** |

### Interpretasi

Hasil estimasi menunjukkan bahwa rata-rata tingkat stres akademik mahasiswa adalah **36,05**. Nilai tersebut memberikan gambaran bahwa mahasiswa secara umum cukup merasakan tekanan akademik selama menjalani perkuliahan, baik karena tugas, ujian, tuntutan memperoleh nilai yang baik, maupun kesulitan mengatur waktu. Karena estimasi dilakukan menggunakan **Two-Stage Sampling**, hasil ini telah memperhitungkan desain pengambilan sampel sehingga lebih mewakili kondisi populasi.

## Standard Error

### Hasil Standard Error

| Parameter | Nilai |
|-----------|------:|
| Standard Error | **2.5085** |

### Interpretasi

Nilai **Standard Error sebesar 2,5085** menunjukkan bahwa hasil estimasi memiliki tingkat ketelitian yang cukup baik. Apabila penelitian dilakukan kembali dengan prosedur pengambilan sampel yang sama, maka rata-rata yang diperoleh diperkirakan tidak akan berbeda jauh dari hasil penelitian ini.

## Confidence Interval

### Hasil Confidence Interval

| Tingkat Kepercayaan | Batas Bawah | Batas Atas |
|---------------------|------------:|-----------:|
| 95% | 31.13 | 40.97 |

### Interpretasi

Interval kepercayaan sebesar **95%** menunjukkan bahwa rata-rata tingkat stres akademik mahasiswa diperkirakan berada pada rentang **31,13 hingga 40,97**. Rentang tersebut memberikan keyakinan bahwa hasil estimasi yang diperoleh dari sampel mampu mewakili kondisi populasi secara keseluruhan.

## Relative Standard Error (RSE)

### Hasil RSE

| Parameter | Nilai |
|-----------|------:|
| Relative Standard Error | **6.96%** |

### Interpretasi

Nilai **RSE sebesar 6,96%** menunjukkan bahwa hasil estimasi memiliki tingkat ketelitian yang baik. Karena nilainya berada jauh di bawah **25%**, estimasi rata-rata tingkat stres akademik dapat dikatakan cukup presisi sehingga layak digunakan untuk menggambarkan kondisi populasi mahasiswa.

## Design Effect (DEFF)

### Hasil Design Effect

| Parameter | Nilai |
|-----------|------:|
| Design Effect | **8.0464** |

### Interpretasi

Nilai **DEFF sebesar 8,0464** menunjukkan bahwa variasi hasil estimasi lebih besar dibandingkan apabila menggunakan **Simple Random Sampling**. Hal ini wajar karena penelitian menggunakan **Two-Stage Sampling**, di mana pemilihan sampel dilakukan melalui dua tahap. Meskipun demikian, metode ini tetap sesuai dengan kondisi penelitian karena populasi mahasiswa telah terbagi ke dalam beberapa kelas sehingga proses pengambilan sampel menjadi lebih efisien tanpa mengurangi kemampuan penelitian dalam menggambarkan rata-rata tingkat stres akademik mahasiswa.

<p align="right">
<a href="#table-of-contents">Back to Top ↑</a>
</p>

# Conclusion

Berdasarkan hasil penelitian, teknik **Two-Stage Sampling** berhasil diterapkan untuk mengestimasi rata-rata tingkat stres akademik mahasiswa Program Studi Statistika Universitas Mataram. Sebelum analisis dilakukan, instrumen penelitian telah melalui uji validitas dan uji reliabilitas, dengan seluruh butir pernyataan dinyatakan valid serta memiliki nilai **Cronbach's Alpha sebesar 0,861**, sehingga layak digunakan sebagai alat pengumpulan data. Hasil estimasi menunjukkan bahwa rata-rata tingkat stres akademik mahasiswa adalah **36,05**. Nilai tersebut diperoleh setelah memperhitungkan desain pengambilan sampel dan pembobotan, sehingga dapat digunakan untuk menggambarkan kondisi populasi yang diteliti.

Selain itu, hasil estimasi memiliki **Standard Error sebesar 2,5085**, **Confidence Interval 95% sebesar 31,13–40,97**, serta **Relative Standard Error (RSE) sebesar 6,96%**. Nilai RSE yang berada di bawah 25% menunjukkan bahwa estimasi yang diperoleh memiliki tingkat ketelitian yang baik. Meskipun nilai **Design Effect (DEFF)** sebesar **8,0464** menunjukkan bahwa ragam estimasi lebih besar dibandingkan **Simple Random Sampling**, penggunaan **Two-Stage Sampling** tetap sesuai karena populasi penelitian terbagi ke dalam beberapa kelas sebagai klaster. Secara keseluruhan, penelitian ini menunjukkan bahwa teknik **Two-Stage Sampling** dapat digunakan untuk mengestimasi rata-rata tingkat stres akademik mahasiswa secara representatif serta menghasilkan estimasi yang memiliki tingkat ketelitian yang baik.

## Project Resources

| Resource | Availability |
|----------|--------------|
| 📋 Questionnaire | Available (https://forms.gle/KzBaR5CphS4eybqD7) |
| 💻 R Script | Available |
| 🔒 Dataset | Private |
| 📊 Analysis Output | Included in this README |
