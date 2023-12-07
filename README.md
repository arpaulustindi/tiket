## Mobile Programming Flutter

Aplikasi Booking Tiket Kapal dan Hotel.

## 1. Pembuatan Projet Flutter

Pada VS Code Buatlah Project Flutter Baru dengan type Application

dengan nama project **tiket**

## 2. Menambahkan Assets

### 2.1 Buat Folder Asset

Dalam root Projet, buatlah folder baru dengan nama **assets/images**

### 2.2 Download Gambar

Download seluruh gambar yang ada di https://drive.google.com/drive/folders/1JwPrwCXrMulQoND71kro-WQW_c1MIz5m?usp=sharing link ini,kemudian hasil gambar tersebut diisi ke dalam folder images di dalam folder assets yang dibuat

![](assets/20231207_131622_z1.png)

### 2.3. Update pubspec.yaml Untuk menambahkan asset

Dalam file pubspec.yaml carilah baris setting dan ubalah menjadi

![](assets/20231207_132259_z3.png)

setelah itu disave

### 3. Menambahkan Package Pendukung

Pada menu terminal di VS Code, ketikan perintah `flutter pub add fluentui_icons get gap fluttertoast barcode_widget`

jika berhasil maka pada file **pubspec.yaml** akan menjadi seperti gambar berikut

![](assets/20231207_132007_z2.png)

## 4. Struktur Folder di dalam lib

Pad folder lib, buatlah folder dengan nama dan struktur seperti berikut

* db
* screens
  * components
* utils
* widgets

## 5. Coding Di dalam Folder db

### file : hotel_list.dart

![](assets/20231207_132845_c01.png)

### file : ticket_list.dart

![](assets/20231207_132938_c02.png)

## 6. Code di dalam folder screens

### file : bottom_bar.dart

![](assets/20231207_133809_s1.png)

### file : home_screen.dart

![](assets/20231207_133828_s2.png)

### file : profile_screen.dart

![](assets/20231207_133841_s3.png)

### file : search_screen.dart

![](assets/20231207_133855_s4.png)

### file : ticket_screen.dart

![](assets/20231207_134220_s5.png)

### Code di dalam folder screns/components

### file : HotelItemView.dart

![](assets/20231207_134028_sc1.png)

### file : ticket_view.dart

![](assets/20231207_134039_sc2.png)

### Code di dalam folder utils

#### file : app_layout.dart

![](assets/20231207_134736_u1.png)

#### file : app_styles.dart

![](assets/20231207_134748_u2.png)

### Code di dalam folder widgets

#### file : circle_shape.dart

![](assets/20231207_134759_w.png)

### Code di dalam folder lib

#### file : main.dart

![](assets/20231207_134814_m.png)

## Struktur File dan Folder di dalam Folder lib

Berikut merupakan hasil struktur folder dan file yang telah dibuat (dari proses di atas)

![](assets/20231207_141517_ff.png)

## Hasil Dari Aplikasi

Screen Beranda

![](assets/20231207_140030_home.gif)

Screen Pencarian

![](assets/20231207_140030_cari.gif)

Screen Tiket

![](assets/20231207_140030_tiket.gif)

Screen Profil

![](assets/20231207_140030_profil.gif)
