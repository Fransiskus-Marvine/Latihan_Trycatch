import 'dart:convert';
import 'package:http/http.dart' as http;

//  //Fungsi future tanpa pengembalian nilai
// void() async {
//   Future<void> tarikData() async {
//     var Response = await http.get(
//       Uri.parse('https://jsonplaceholder.typicode.com/posts'),
//     );
//     var data = jsonDecode(Response.body);
//     print(data[0]);
//   }

//   await tarikData();
// }



// Pengembalian data
// void main() async {
//   //Fungsi future tanpa pengembalian nilai
//   Future<dynamic> tarikData() async {
//     var Response = await http.get(
//       Uri.parse('https://jsonplaceholder.typicode.com/posts'),
//     );
//     var Kelompok = jsonDecode(Response.body);
//     return Kelompok[1]; //Jika ingin mengambil data menggunakan list
//   }

//   var data = await tarikData();
//   print(data['body']); //harus ada pemilihan misal judul/body/id untuk memanggil data yang diperlukan (Jika memakai List di Return)
  
// }


// //For
// void main() async {
//   //Fungsi future tanpa pengembalian nilai
//   Future<dynamic> tarikData() async {
//     var Response = await http.get(
//       Uri.parse('https://jsonplaceholder.typicode.com/posts'),
//     );
//     var Kelompok = jsonDecode(Response.body);
//     return Kelompok;
//   }
//   var data = await tarikData();
//   print('------------------------------------------------------------');
//   print('Data Comments');
//   print('------------------------------------------------------------');


//   for (var i = 0; i < data.length; i++) {
//     print('${data[i]['title']} | ${data[i]['body']}');
//     print('------------------------------------------------------------');
//   }
// }


// //For in
// void main() async {
//   Future<dynamic> tarikData() async {
//     var Response = await http.get(
//       Uri.parse('https://jsonplaceholder.typicode.com/posts'),
//     );
//     var Kelompok = jsonDecode(Response.body);
//     return Kelompok;
//   }
//   var data = await tarikData();
//   print('------------------------------------------------------------');
//   print('Data Comments');
//   print('------------------------------------------------------------');


//   for (var item in data) {
//     print('${item['title']} | ${item['body']}');
//     print('------------------------------------------------------------');
//   }
// }

//For each
// void main() async {
//   Future<List<dynamic>> tarikData() async {
//     var Response = await http.get(
//       Uri.parse('https://jsonplaceholder.typicode.com/posts'),
//     );
//     var Kelompok = jsonDecode(Response.body);
//     return Kelompok;
//   }
//   List<dynamic> data = await tarikData();
//   print('------------------------------------------------------------');
//   print('Data Comments');
//   print('------------------------------------------------------------');

//  data.forEach((item) {
//   print('Nama : ${item['name']}');
//     print('Email: ${item['email']}');
//     print('------------------------------------------------------------');
//  });
// }


// Catch (e)
void main() async {
  Future<List<dynamic>> tarikData() async {
    try {
      var Response = await http.get(
      Uri.parse('https://dummyjson.com/products'),
      );
      var Kelompok = jsonDecode(Response.body);
      return Kelompok['products'];
    } catch (e) {
      print("Terjadi eror: $e");
      return [];
    }
  }

  var data = await tarikData();
  print('------------------------------------------------------------');
  print('Data Comments');
  print('------------------------------------------------------------');

  for (var item in data) {
    print('${item['title']} | ${item['price']}');
  }
} 
