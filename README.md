<p align="center" width="80%">
    <img width="60%" src="https://thumb.viva.co.id/media/frontend/thumbs3/2020/12/09/5fd052596fe22-pilkada-2020-tangerang-selatan_1265_711.jpg">
</p>

<div align="center">
    
# PILKADA JAKARTA 2024
[![scrape_MDS](https://github.com/hhyuss/MDS_UAS/actions/workflows/main.yml/badge.svg)](https://github.com/hhyuss/MDS_UAS/actions/workflows/main.yml)

<p align="center">
    
# 🗳️ Pilkada Jakarta 2024 Menu

</p>

[Tentang](#bar_chart-tentang)
•
[Deskripsi Project](#writing_hand-deskripsi-project)
•
[Dokumen](#pencil-dokumen)
•
[Visualisasi Data Scraping](#chart_with_upwards_trend-visualisasi-data-scraping)
•
[PPT](#desktop_computer-PPT)
•
[Pengembang](#woman_technologist-pengembang)

</div>

## :bar_chart: Tentang

**Apa sih Pilkada Jakarta 2024 itu?**

<p align="justify">
Pilkada Jakarta 2024 merujuk pada pemilihan kepala daerah yang akan diselenggarakan di Jakarta pada tahun 2024. Pemilihan ini akan menentukan gubernur dan wakil gubernur Jakarta untuk periode berikutnya. Pilkada ini merupakan bagian penting dari proses demokrasi di Indonesia.
</p>


<p align="center">
  <img width="220" height="150" src="https://thumb.viva.co.id/media/frontend/thumbs3/2024/04/26/662b828914324-ketum-psi-kaesang-pangarep-pembekalan-calon-legislatif-terpilih-psi-di-jakarta_1265_711.jpg">
  <img width="220" height="150" src="https://thumb.viva.co.id/media/frontend/thumbs3/2023/06/28/649c0888a6ecc-gubernur-jawa-barat-ridwan-kamil_1265_711.jpg">
  <img width="220" height="150" src="https://thumb.viva.co.id/media/frontend/thumbs3/2024/02/20/65d44edf2d52e-anies-baswedan-dan-muhaimin-iskandar-persiapan-langkah-hukum-paslon-amin_1265_711.jpg">
</p>

## :writing_hand: Deskripsi Project

<p align="center" width="80%">
  <a href="https://www.nesabamedia.com/wp-content/uploads/2022/02/Portal-Berita-Viva.png">
    <img width="700" height="400" src="https://www.nesabamedia.com/wp-content/uploads/2022/02/Portal-Berita-Viva.png">
  </a>
</p>

<div align="center">

<p align="justify">
Pada project kali ini, kita akan melakukan scraping pada website https://www.viva.co.id/ untuk mengumpulkan data terkait Pilkada Jakarta 2024. Situs web ini menyediakan berita, artikel, dan informasi terbaru mengenai berbagai topik, termasuk politik dan pemilihan umum di Indonesia.
</p>

<p align="justify">
Data yang dikumpulkan dari situs ini akan mencakup id, time scraped, judul berita terkait pilkada jakarta, link berita, dan tanggal dan waktu publikasi artikel berita. Data ini akan digunakan untuk menganalisis tren dan perkembangan terkait Pilkada Jakarta 2024.
</p>

</div>

<p align="justify">
Data yang akan dilakukan scraping berkaitan dengan :
  </p>

 <p align="justify">
      
+ **ID** meliputi ID unik dari data yang di scraper terkait Pilkada Jakarta 2024.
+ **Time Scraped** meliputi waktu ketika data di-scraper, dalam format tanggal dan waktu.
+ **Judul** meliputi judul berita terkini dan artikel opini terkait Pilkada Jakarta 2024.
+ **Links** meliputi Tautan atau URL ke artikel berita.
+ **Date** meliputi Tanggal dan waktu publikasi artikel berita.
</p>

## :pencil: Dokumen
Berikut adalah salah satu contoh dokumen di MongoDB untuk berita Pilkada:
```mongodb
{
  "_id": {
    "$oid": "665e7512531ac1fe5c07e353"
  },
  "time_scraped": {
    "$date": "2024-06-04T01:59:35.001Z"
  },
  "judul": "\n\nKaesang Pangarep dan Rano Karno Dibidik untuk Pilkada Jakarta\n\n",
  "links": "https://www.viva.co.id/berita/politik/1719617-kaesang-pangarep-dan-rano-karno-dibidik-untuk-pilkada-jakarta",
  "date": "\n3 Juni 2024 | 17:46 WIB\n"
}
```
## :chart_with_upwards_trend: Visualisasi Data Scraping
Berikut merupakan link data visualisasi dari hasil scraping : 
+ [Pilkada Jakarta 2024](https://rpubs.com/rizky_ardhani/airline_scraping)

## :desktop_computer: PPT
Berikut adalah link powerpoint berkaitan dengan project yang telah dibuat :

## :woman_technologist: Pengembang
+ [Uswatun Hasanah](https://github.com/hhyuss/) (G1501231040)



