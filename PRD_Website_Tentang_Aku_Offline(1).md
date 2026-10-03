# PRD — Website “Tentang Aku” Offline

## 1. Informasi Proyek

- **Nama:** Najwa Akmaliyatur Rosyidah
- **Nama panggilan:** Najwa (Pou)
- **Sekolah:** SMK AL-MAHRUSIYAH LIRBOYO
- **Jurusan:** TKJ
- **Kelas:** XII TKJ A
- **Domisili:** Blitar, Jawa Timur
- **Jenis website:** Website profil pribadi / biodata
- **Teknologi:** HTML5, CSS3, JavaScript
- **Mode:** 100% offline
- **Asset:** Semua gambar berada di folder `image/`
- **Tujuan:** Website dapat dibuka melalui `index.html` tanpa koneksi internet.

## 2. Konsep

Website “Tentang Aku” memperkenalkan diri, biodata, riwayat pendidikan, keahlian, minat, aktivitas, galeri, cita-cita, dan kontak.

Konsep visual menggunakan tema **teknologi/networking** dengan warna biru gelap dan cyan, tetap clean dan personal.

### Tagline

> **“Mengenal diriku, minatku, dan langkahku menuju masa depan.”**

## 3. Target Pengguna

- Guru/pembimbing
- Teman sekolah
- Pengunjung yang ingin mengenal profil
- Sebagai portofolio sederhana praktik Web Development

## 4. Gaya Visual

**Gaya:** modern, clean, personal, teknologi, sedikit futuristik.

| Elemen | Warna |
|---|---|
| Primary | `#071B4A` |
| Secondary | `#123D7A` |
| Accent | `#00D9FF` |
| Background | `#061225` |
| Card | `#0B2345` |
| Text | `#FFFFFF` |
| Secondary text | `#B8C7DC` |

Gunakan font bawaan sistem seperti `Arial`, `Trebuchet MS`, `Georgia`, dan `sans-serif`. **Jangan memakai Google Fonts** karena website harus offline.

## 5. Struktur Folder

```text
tentang-aku/
├── index.html
├── css/
│   └── style.css
├── js/
│   └── script.js
└── image/
    ├── profile.jpg
    ├── jaringan.jpg
    ├── monitoring.jpg
    └── activity.jpg
```

### Asset yang digunakan

- `profile.jpg` — foto pribadi untuk hero/profil.
- `jaringan.jpg` — ilustrasi jaringan/Wi-Fi/perangkat.
- `monitoring.jpg` — ilustrasi monitoring/data.
- `activity.jpg` — foto kegiatan tambahan.

## 6. Aturan Offline

Semua resource harus lokal.

**Boleh:**

```html
<link rel="stylesheet" href="css/style.css">
<script src="js/script.js"></script>
<img src="image/profile.jpg" alt="Foto profil">
```

**Tidak boleh:**

```html
<link href="https://fonts.googleapis.com/...">
<script src="https://cdn..."></script>
<img src="https://images...">
```

Hindari CDN, Google Fonts, Bootstrap online, Font Awesome online, API, gambar URL internet, dan library yang membutuhkan internet. Gunakan emoji, Unicode, atau CSS untuk ikon.

## 7. Struktur Halaman

```text
Navbar
 ↓
Hero / Beranda
 ↓
Tentang Aku
 ↓
Biodata
 ↓
Riwayat Pendidikan
 ↓
Keahlian
 ↓
Minat & Aktivitas
 ↓
Galeri
 ↓
Cita-cita
 ↓
Kontak
 ↓
Footer
```

## 8. Navbar

Isi:
- Logo/nama
- Beranda
- Tentang Aku
- Pendidikan
- Keahlian
- Galeri
- Kontak

Gunakan anchor lokal: `#home`, `#about`, `#education`, `#skills`, `#gallery`, `#contact`.

Fitur:
- Sticky navbar
- Hover effect
- Smooth scrolling
- Hamburger menu untuk mobile menggunakan JavaScript

## 9. Hero

Isi:

- “Halo, aku...”
- **Najwa Akmaliyatur Rosyidah**
- **Najwa (Pou)**
- “Pelajar TKJ yang tertarik dengan teknologi, jaringan komputer, web development, dan berbagai hal baru di dunia digital.”
- Tombol **Kenal Aku**
- Tombol **Lihat Keahlianku**
- Foto lokal `image/profile.jpg`

Foto dapat dibuat rounded/circle dengan border cyan dan glow ringan.

## 10. Tentang Aku

Contoh:

> “Aku adalah Najwa Akmaliyatur Rosyidah, biasa dipanggil Najwa atau Pou. Aku adalah pelajar TKJ di SMK AL-MAHRUSIYAH LIRBOYO yang tertarik mempelajari jaringan komputer, Linux, web development, dan berbagai teknologi digital. Bagiku, belajar teknologi bukan hanya tentang menghafal teori, tetapi juga mencoba, membuat, dan memecahkan masalah.”

Konten dapat dikembangkan dengan cerita pribadi.

## 11. Biodata

| Informasi | Isi |
|---|---|
| Nama | Najwa Akmaliyatur Rosyidah |
| Nama Panggilan | Najwa (Pou) |
| Sekolah | SMK AL-MAHRUSIYAH LIRBOYO |
| Jurusan | TKJ |
| Kelas | XII TKJ A |
| Domisili | Blitar, Jawa Timur |
| Hobi | Mendengarkan musik |
| Cita-cita | Terus belajar dan berkembang di bidang teknologi |

## 12. Riwayat Pendidikan

Buat timeline pendidikan:

```text
2016–2021
MI KANDANGAN SRENGAT
       ↓
2022–2024
SMP MAMBAUS SHOLIHIN 2 BLITAR
       ↓
2025–2027
SMK AL-MAHRUSIYAH
       ↓
Masa Depan
Perguruan Tinggi (Belum Tahu)
```

### MI KANDANGAN SRENGAT
**2016–2021**

Pendidikan dasar.

### SMP MAMBAUS SHOLIHIN 2 BLITAR
**2022–2024**

Pendidikan tingkat SMP.

### SMK AL-MAHRUSIYAH
**2025–2027**

Jurusan TKJ dengan fokus pada teknologi, jaringan komputer, dan web development.

### Perguruan Tinggi
**Belum tahu**

Bagian ini dapat diperbarui ketika sudah menentukan pilihan.

## 13. Keahlian

### 💻 Web Development
- HTML
- CSS
- JavaScript
- VS Code

### 🌐 Networking
- Dasar jaringan
- IP Address
- Ping
- Konfigurasi jaringan dasar

### 🐧 Linux
- Command dasar
- File dan directory
- `mkdir`
- `touch`
- `cp`
- `mv`

### 🤖 Teknologi & AI
- Mengenal AI
- Menggunakan AI sebagai alat bantu belajar
- Eksplorasi teknologi digital

## 14. Minat & Aktivitas

### 🌐 Jaringan Komputer

Gunakan `image/jaringan.jpg`.

> “Aku tertarik mempelajari bagaimana perangkat dapat saling terhubung dan bertukar data melalui jaringan.”

### 💻 Web Development

> “Aku sedang belajar membuat website menggunakan HTML, CSS, dan JavaScript.”

### 📊 Monitoring

Gunakan `image/monitoring.jpg`.

> “Aku tertarik dengan sistem monitoring dan bagaimana data dapat digunakan untuk melihat kondisi suatu sistem.”

## 15. Pengalaman / Aktivitas

Contoh:

- **Praktik Web Development** — membuat website dengan HTML, CSS, dan JavaScript.
- **Praktik Linux** — command line dan pengelolaan file/directory.
- **Praktik Networking** — IP address, adapter, dan pengujian `ping`.
- **PKL** — pengalaman Praktik Kerja Lapangan dapat ditampilkan secara singkat.

## 16. Galeri

Gunakan gambar lokal:

- `profile.jpg`
- `jaringan.jpg`
- `monitoring.jpg`
- `activity.jpg`

Tampilan grid responsif dengan hover effect. Klik gambar dapat membuka lightbox menggunakan JavaScript.

## 17. Cita-cita / Goals

### 🎯 Belajar
Terus belajar dan berkembang di bidang teknologi.

### 🚀 Berkembang
Meningkatkan kemampuan melalui praktik dan proyek.

### 💡 Berkarya
Menggunakan pengetahuan teknologi untuk membuat sesuatu yang bermanfaat.

## 18. Kontak

- **Email:** najwaakmaliya53@gmail.com
- **Instagram:** @najwaa.akm
- **GitHub:** github.com/poutech

## 19. Form Kontak

Input:
- Nama
- Email
- Pesan
- Tombol Kirim

JavaScript memvalidasi input. Karena tidak ada backend, form **tidak benar-benar mengirim data ke server**.

Setelah valid:

> “Pesan berhasil divalidasi. Terima kasih sudah berkunjung!”

## 20. Footer

Isi:

- Najwa Akmaliyatur Rosyidah
- Najwa (Pou)
- Tagline
- Navigasi
- `© 2026 Najwa Akmaliyatur Rosyidah. Dibuat untuk proyek praktik Web Development.`

## 21. Fitur JavaScript

File: `js/script.js`

Minimal:

1. Smooth navigation
2. Hamburger menu mobile
3. Typing effect pada hero
4. Gallery lightbox
5. Form validation
6. Scroll/reveal animation sederhana

Tidak menggunakan library eksternal.

## 22. Persyaratan CSS

File: `css/style.css`

Gunakan:
- CSS Variables
- Flexbox
- CSS Grid
- Media Query
- Border Radius
- Box Shadow
- Transition
- Hover Effect
- Responsive Design

Contoh:

```css
:root {
  --primary: #071B4A;
  --secondary: #123D7A;
  --accent: #00D9FF;
  --background: #061225;
  --card: #0B2345;
  --text: #FFFFFF;
  --text-secondary: #B8C7DC;
}
```

## 23. Responsive Design

### Desktop
- Hero dua kolom
- Biodata/card beberapa kolom
- Galeri 3–4 kolom

### Tablet
- Grid 2 kolom

### Mobile
- Hero satu kolom
- Foto di tengah
- Card satu kolom
- Hamburger navbar
- Tombol mudah ditekan
- Tidak ada horizontal scrolling

## 24. User Flow

```text
Buka index.html
 ↓
Hero
 ↓
Profil
 ↓
Biodata
 ↓
Riwayat Pendidikan
 ↓
Keahlian
 ↓
Minat & Aktivitas
 ↓
Galeri
 ↓
Goals
 ↓
Kontak
```

## 25. Kriteria Sukses

- [ ] `index.html` dapat dibuka dengan double-click.
- [ ] Website tetap tampil saat internet dimatikan.
- [ ] CSS tetap bekerja.
- [ ] JavaScript tetap bekerja.
- [ ] Foto profil dan semua gambar lokal muncul.
- [ ] Navbar dan menu mobile berfungsi.
- [ ] Typing effect berfungsi.
- [ ] Lightbox galeri berfungsi.
- [ ] Form validation berfungsi.
- [ ] Website responsive.
- [ ] Tidak ada resource eksternal yang wajib diakses.

## 26. Pengujian Offline

1. Matikan Wi-Fi/internet.
2. Buka folder proyek.
3. Double-click `index.html`.
4. Pastikan seluruh CSS dan gambar muncul.
5. Uji navbar, hamburger menu, typing effect, galeri, lightbox, dan form.
6. Uji ukuran desktop, tablet, dan mobile.

## 27. Output Akhir

```text
tentang-aku/
├── index.html
├── css/
│   └── style.css
├── js/
│   └── script.js
└── image/
    ├── profile.jpg
    ├── jaringan.jpg
    ├── monitoring.jpg
    └── activity.jpg
```

### Prinsip utama

**Personal + Technology + Clean + Modern + Offline**

Website harus terasa seperti profil pribadi Najwa yang modern, tetapi tetap sederhana untuk proyek praktik HTML, CSS, dan JavaScript serta dapat dibuka tanpa Wi-Fi/internet.
