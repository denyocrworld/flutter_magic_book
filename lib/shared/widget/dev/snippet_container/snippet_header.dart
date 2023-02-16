// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

/*

Skill
- Basic Pemrograman
- OOP

Experience
- Magang
- Kerja Full Time
- Freelance
- Bikin Aplikasi Sendiri

Pemain Bola
Skills
> Latihan Passing
> Latihan Shooting

Experience
> Latih Tanding
> Ikut Liga

! Kelas Dart/Flutter
! START: Akhir Bulan January/Awal February
? capekngoding.com

! Grup Komunitas Berandal
? capekngoding.com/join

UI/UX Designer
- Gak perlu ngoding
- Belajar bikin design di FIGMA

Front End
- Bikin UI
- Consume API

(Optional)
- Testing
- CI/CD

Backend
- API Login
- API Logout
- API CRUD Products
- API CRUD Customers
- API Orders
- Bisa bikin dokumentasi di Postman
- SQL 

(Optional)
- Testing
- CI/CD
- Integrasi dengan 3rd party API

X Backend itu gak bikin UI

Frontend
  Jalur React
    HTML, CSS, JS, TS
    React Framework

  Jalur Flutter
    Dart
    Flutter Framework

Full Stack
- Backend
- Frontend

Minimal:
- Bisa Baca artikel dalam Bahasa Inggris

Junior Programmer 
Daerah
4-8

Jakarta
8-15

Batam
8-20++

Singapur
15-35++

US/UK
25-45++

- Harus punya portofolio
Buat 5 UI dari Aplikasi Populer
Tiktok, Tokopedia, Gojek, Noice, Shopee
(1 Aplikasi, 3-5 halaman aja cukup)

Buat 5 UI yang terbaik di dribbble.com
10 Portofolio

*/
import 'package:flutter/material.dart';

class SnippetHeader extends StatelessWidget {
  final String label;
  const SnippetHeader(this.label, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
