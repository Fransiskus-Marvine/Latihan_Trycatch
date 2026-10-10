import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

void main() async {
  // FUTURE DENGAN <VOID> -> TIDAK ADA PENGEMBALIAN
//   Future<void> tarikData() async {
//     var response = await http.get
//         (Uri.parse('https://jsonplaceholder.typicode.com/comments')
//     );
  
//   // print(response.body);

//   var data = jsonDecode(response.body);
//   print(data);
//   }

//   await tarikData();
//   }


  // POIN buat future dengan pengembalian dari contoh di atas (2 orang);
  // FUTURE TANPA <VOID> -> ADA PENGEMBALIAN
//    Future tarikData(int a, String b) async {
//        var response =await http.get(
//            Uri.parse('https://jsonplaceholder.typicode.com/comments')
//        );
//        var data = jsonDecode(response.body);
//        return data[a][b];
//    }
    
//    for (var i = 0; i < 20; i++) {
//        var hasil = await tarikData(i, 'email'); 
//        print(hasil);


  // PENGULANGAN
//   Future tarikData() async {
//     var response = await http.get(
//         Uri.parse('https://jsonplaceholder.typicode.com/comments')
//         );
//         var data = jsonDecode(response.body);
//         return data;
//         }
//         var data = await tarikData();
        
//         for (var i = 0; i < 10; i++) {
//           print(data);
//         }


  // FOR IN
//   Future tarikData() async {
//     var response = await http.get(
//         Uri.parse('https://jsonplaceholder.typicode.com/comments')
//         );
//         var data = jsonDecode(response.body);
//         return data;
//     }
    
//     var encoder = const JsonEncoder.withIndent('  '); // Membuat format indentasi 2 spasi
//     var data = await tarikData();
//     int count = 0;
//     for (var item in data) {
//         if (count >= 10) break; // Batasi hanya 10 data pertama
//         print(encoder.convert(item)); // Mengubah map menjadi string JSON yang rapi
//         print('-------------------'); // Pembatas antar data
//         count++;
//         }


  // FOR EACH
//   Future tarikData() async {
//     var response = await http.get(
//         Uri.parse('https://jsonplaceholder.typicode.com/comments')
//         );
//         var data = jsonDecode(response.body);
//         return data;
//         }
        
//         var encoder = const JsonEncoder.withIndent('  '); // Membuat format indentasi 2 spasi
//         var data = await tarikData();
//         // Mengambil 10 data pertama lalu menjalankan forEach
        
//         data.take(10).forEach((item) {
//             print(encoder.convert(item)); // Mengubah map menjadi string JSON yang rapi
//             print('-------------------'); // Pembatas antar data
//             });


  // TRY CATCH
// Future<List> tarikData() async {
//     try {
//         var response = await http.get(
//         Uri.parse('https://jsonplaceholder.typicode.com/comments')
//         );
//         var data = jsonDecode(response.body);
//         return data;
//         }

//     catch (e) {
//         return[];
//         }  
//     }

//     var data = await tarikData();
//         for (var i = 0; i < 10; i++) {
//           print(data);
//         }

  // https://dummyjson.com/products
  // print title | price
  // VERSI 1
// Future <List> tarikData() async {
//     try {
//         var response = await http.get(
//             Uri.parse('https://dummyjson.com/products')
//             );

//             if (response.statusCode == 200) {
//                 var decodedData = jsonDecode(response.body);

//                 // PERHATIAN: API dummyjson membungkus list produknya di dalam objek/map dengan key 'products'
//                 // Struktur JSON: { "products": [ {...}, {...} ], "total": 100, ... }
//                 return decodedData['products'] as List;
//             } else {
//                 print('Server Error : \${response.statusCode}');
//                 return[];
//             }
//     } catch (e) {
//         print('Terjadi kesalahan koneksi : \$e');
//         return [];
//     }
// }
//     print('Sedang mengambil data produk...');
//     List listProduk = await tarikData();

//     if (listProduk.isEmpty) {
//         print('Gagal mengambil data atau data kosong.');
//         return;
//     }

//     print('\n=== MENAMPILKAN 20 PRODUK PERTAMA ===\n');

//     // Menggunakan `.take(20)` untuk membatasi hanya 20 data pertama
//     // Menggunakan `.forEach()` untuk melakukan perulangan secara rapi
    
//     listProduk.take(20).forEach((product) {
//         var title = product['title'];
//         var price = product['price'];
        
//         print('Title : $title');
//         print('Price : $price'); // Menggunakan \$ untuk mencetak simbol dolar
//         print('-------------------');
//     });


  // https://dummyjson.com/products
  // print title | price
  // VERSI 2

  try {
    var response = await http.get(Uri.parse('https://dummyjson.com/products'));
    var jsonMentah = jsonDecode(response.body);
    var listProduk = jsonMentah['products'];
  
  int hitung = 0;
  for (var produk in listProduk) {
    if (hitung >= 20) break;
    print('Title : ${produk['title']}');
    print('Price : ${produk['price']}');
    print('-------------------');

    hitung++;
    }
  } 
  
  catch (e) {
    print('Error: $e');
    }
  }
