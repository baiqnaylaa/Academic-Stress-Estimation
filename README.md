<div align="center">

# 📊 Estimasi Rata-Rata Tingkat Stres Akademik Mahasiswa Program Studi Statistika Universitas Mataram Menggunakan Teknik Two-Stage Sampling

![R](https://img.shields.io/badge/R-276DC3?style=for-the-badge&logo=r&logoColor=white)
![Two-Stage Cluster Sampling](https://img.shields.io/badge/Two--Stage%20Cluster%20Sampling-Probability%20Sampling-success?style=for-the-badge)
![Survey Estimation](https://img.shields.io/badge/Survey-Estimation-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge)

</div>

---

## 📖 Project Overview

Project ini bertujuan untuk mengestimasi rata-rata tingkat stres akademik mahasiswa Program Studi Statistika Universitas Mataram menggunakan teknik **Two-Stage Cluster Sampling**.

Penelitian diawali dengan penyusunan instrumen penelitian berupa kuesioner, kemudian dilakukan pengambilan sampel menggunakan teknik **Probability Sampling**, dilanjutkan dengan proses pengumpulan data, data cleaning, skoring, pembobotan sampel (*sampling weighting*), hingga estimasi parameter populasi menggunakan bahasa pemrograman **R**.

Repositori ini mendokumentasikan seluruh proses penelitian secara bertahap, sehingga pembaca dapat memahami alur penelitian mulai dari proses pengambilan sampel hingga interpretasi hasil estimasi.

---

## 📌 Project Information

| Komponen | Keterangan |
|-----------|------------|
| **Jenis Penelitian** | Survei Statistik |
| **Populasi** | Mahasiswa Program Studi Statistika Universitas Mataram |
| **Jumlah Responden** | 30 Mahasiswa |
| **Teknik Sampling** | Two-Stage Cluster Sampling |
| **Metode Estimasi** | Estimasi Rata-Rata Berbobot |
| **Bahasa Pemrograman** | R |
| **Package Utama** | survey |

---

<a id="table-of-contents"></a>

# 📑 Table of Contents

- [📖 Project Overview](#project-overview)
- [📚 Research Background](#research-background)
- [🎯 Research Objectives](#research-objectives)
- [🧪 Research Methodology](#research-methodology)
- [🌳 Sampling Design](#sampling-design)
- [📋 Research Instrument](#research-instrument)
- [🗂 Dataset](#dataset)
- [💻 Data Analysis](#data-analysis)
- [📊 Results & Findings](#results--findings)
- [✅ Conclusion](#conclusion)
- [📚 References](#references)

---

<a id="project-overview"></a>

# 📖 Project Overview

Penelitian ini mengimplementasikan teknik **Two-Stage Cluster Sampling** untuk mengestimasi rata-rata tingkat stres akademik mahasiswa Program Studi Statistika Universitas Mataram.

Berbeda dengan perhitungan rata-rata sederhana, penelitian ini memperhitungkan peluang pemilihan sampel melalui proses pembobotan sehingga estimasi yang dihasilkan lebih representatif terhadap populasi.

Analisis dilakukan menggunakan package **survey** pada bahasa pemrograman **R**, dengan tahapan yang meliputi data cleaning, skoring, pembobotan, pembentukan desain survei, hingga estimasi rata-rata beserta ukuran ketelitiannya berupa **Standard Error (SE)**, **Confidence Interval (CI)**, **Relative Standard Error (RSE)**, dan **Design Effect (DEFF)**.

---

## 📁 Repository Structure

```text
.
├── README.md
├── data/
├── scripts/
├── images/
├── report/
└── LICENSE
```

---
