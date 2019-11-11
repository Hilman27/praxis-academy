## Hari 5 : Asyncronous Process

Asyncronous Process adalah properti tambahan yang bisa ditambahkan ke dalam class atau method. Class/Method yang ditambahi Asyncronous Process akan dapat berjalan pararel di luar loop utama. Properti ini dapat berguna untuk menjalankan sebuah proses yang memerlukan waktu lama(seperti interface) karena jika semua proses berhenti menunggu proses lama, akan ada banyak waktu dan energi yang terbuang. Jadi proses lama seperti interface dapat berjalan sementara loop utama di background melakukan hal lain selagi method Asyncronous mengurus interface.

Untuk membuat sebuah method/class menjadi Asyncronous, tambahan async pada deklarasinya. Lebih dari satu Asyncronous process dapat dikerjakan pada saat bersamaan, tapi disarankan untuk proses utama lebih baik memakai syncronous process.
>void hello() async {
  print('something exciting is going to happen here...');
}

Sebuah class dapat menerima tipe variable Future yang berarti variable akan merefer ke sebuah process yang berlaku di luar loop utama.

>Future<String> firstAsync() async {
  await Future<String>.delayed(const Duration(seconds: 2));
  return "First!";
}

proses Asyncronous dapat menunggu proses lain menggunakan perintah await. perintah inipun juga bisa ditambahi detail, misalnya iterasi untuk setiap proses async.

```
await Future.forEach([1,2,3,4,5,6,7,8,9,10], (int n) => 
    isPrimeNumber(n)
    .then((x) => print("${n}${x ? " is" : " is not"} a prime number")));
```

Stream



Sebuah file dapat dibuka menggunakan decoder seperti di bawah ini :
```
Future<void> main(List<String> args) async {
  var file = File("TestMe.md");
  var lines = utf8.decoder
      .bind(file.openRead())
      .transform(LineSplitter());
  await for (var line in lines) {
    if (!line.startsWith('#')) print(line);
  }
}
```
