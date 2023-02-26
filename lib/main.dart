import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/debug.dart';

/*
? Kelas Online Dart & Flutter
? Buka capekngoding.com
? tinyurl.com/gabung-dong

Ngoding itu kayak main Gitar
Kalo kita,
Hafal semua buku gitar,
Tapi jarang main gitar,
Apa kita bisa main gitar?

Basic pemrograman
- Variabel
- Operator Aritmatika
- IF Statement
- List/Array
- Map
- Looping
- Function
- OOP
> Class, Object, Property, Method
> Inheritance, Interface
> Static

Framework
  React
  Vue
  Svelte
  Flutter


Framework
Architecture
Bikin Aplikasi
Perbanyak Portofolio
Kerja


Junior Programmer (Web | Mobile | Backend Dev)

Daerah
4-8

Jakarta
7/8 - 15

Batam
8 - 20

Singapur
15 - 35++

US/UK
25 - 45++

Jangan ngelamar ke perusahaan yang udah gede,
peluang keterimanya lebih kecil.
Karena semua orang mau masuk kesana.

- Cari startup2 baru
- Kirim CV sebanyak banyak-nya
(300+)
1000, 10k

[TAPI, ada syarat-nya]
- Harus punya portofolio
(Padahal bisa loh, bikin portofolio
Tanpa pernah ngerjain project)

Front End
- Membuat UI
- Consume API

Bikin Portofolio
- Clone UI dari 5 Aplikasi Populer
Tokopedia, Shopee, Tiktok, Netflix, Noice
(per aplikasi 3-5 halaman aja)

- Clone 5 UI dari Dribbble, cari yang terbaik

- Buat 1 Aplikasi yang mengkonsumsi API
11 Portofolio

CV.pdf (< 2MB)
Portofolio.pdf

- Test HackerRank
- Test Coding (Dikasih tantangan menyelesaikan masalah)
- Live Coding
- Live Coding menyelesaikan 
Problem yang dimiliki perusahaan
- Nulis koding di kertas
*/

//function ini untuk menambahkan product
product() {}

getUser() async {
  var response = await Dio().get(
    "https://reqres.in/api/users",
    options: Options(
      headers: {
        "Content-Type": "application/json",
      },
    ),
  );
  Map obj = response.data;
}

addProduct() async {
  /*
    - Harus punya 1 tujuan dan hanya satu tujuan
    - Gak boleh terlalu panjang,
    idealnya, terlihat dalam 1 layar
  */
  var user = await getUser();

  var response = await Dio().post(
    "https://reqres.in/api/users",
    options: Options(
      headers: {
        "Content-Type": "application/json",
      },
    ),
    data: {
      "name": "morpheus",
      "job": "programmer",
    },
  );
  Map obj = response.data;
}

deleteProduct() {}
updateProduct() {}
getProduct() {}

dltProduct() {}
updtPrdct() {}

deleteProductOfCustomerFromDatabase() {}

addProductHttpRequest() {}
addProductLocalStorage() {}
/*
- ada prefix-nya
- gak boleh alay
- gak boleh berlebihan
- gak boleh kepanjangan
- boleh lebih panjang untuk memperjelas 
*/

void main() async {
  await initialize();

  // Get.mainTheme.value = getDefaultTheme();
  Get.mainTheme.value = getDarkTheme();
  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Get.mainTheme,
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Capek Ngoding',
          navigatorKey: Get.navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: value,
          // home: const FbkMainNavigationView(),
          home: const TutorialDemoView(),
          // home: const CrMainNavigationView(),
          // home: const UserListView(),
          // home: const CgListCheckerView(),
          // home: const ContohView(),
          // home: const TutorialListView(),
          // home: const MainNavigationView(),
          // home: ShakuroDashboardView(),
          // home: LoginView(),
          // home: GegeGeminkDashboardUiView(),
          // home: ContohView(),
          // home: TutorialView(),
          builder: (context, child) => debugView(
            context: context,
            child: child,
            visible: true,
          ),
        );
      },
    );
  }
}
