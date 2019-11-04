## Hari 1 : Installasi Dart dan Pengenalan IDE
Contoh-Contoh Konstruksi dasar Dart.

# 1. Hello Word
Program utama dart selalu memiliki fungsi main. Dalam program ini, fungsi main hanya diisi dengan Hello World.

>void main() {
  print('Hello, World!');
}

![Hello Word](https://github.com/Hilman27/picutreRepo/blob/master/Media2/1_HelloWorld.PNG?raw=true?raw=true)

# 2. Variable
Variable dalam Dart dapat langsung dideklarasikan dengan var.

>var name = 'Voyager I';
var year = 1977;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
  'tags': ['saturn'],
  'url': '//path/to/saturn.jpg'
};
void main() {
  print('This is name var : ' + name);
  print('This is year var : ' + year.toString());
  print('This is antennaDiameter var : ' + antennaDiameter.toString());
}

![Variable](https://github.com/Hilman27/picutreRepo/blob/master/Media2/2_Variable.PNG?raw=true)

# 3. Control_Flow
Penggunaan if, else dan For dapat mengubah jalur eksekusi perintah.

>void main(){
  var year = 2010;
    if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  for (var object in flybyObjects) {
    print(object);
  }
  for (int month = 1; month <= 12; month++) {
    print(month);
  }
  while (year < 2016) {
    year += 1;
  }
}

![Variable](https://github.com/Hilman27/picutreRepo/blob/master/Media2/3_ControlFlow.PNG?raw=true)

# 4. Function
Dengan membuat sebuah function, kode dalam function dapat dipanggil berkali-kali hanya dengan memanggil function tersebut.

>int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main(){
  var num = 20;
  var result = fibonacci(num);
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  print("Bilangan fibonacci ke-"+ num.toString() +" adalah "+result.toString());
  flybyObjects.where((name) => name.contains('turn')).forEach(print);
}

# 5. Comment
Comment membuat tulisan yang dirangkumnya tidak tampak di compiler. Bisa digunakan untuk backup kode atau menonaktifkan perintah.

>//Anything written with // are not readed.
/*
  This one works this way as well
  void main(){
    print("Hello!");
  }
*/

# 6. Import
Penggunaan import dapat digunakan untuk memanggil fungsi dalam file atau library lain.
Import memanggil fungsi di file Function dan Control_Flow.

>// Importing core libraries
import 'dart:math';
import 'dart:io';

// Importing files
import 'function.dart';

void main(){
  var pownum = pow(2, 5);
  var result = fibonacci(20);
  print ("Random Number : " + pownum.toString());
  print ("Fibonacci : " + result.toString());
}

![Import](https://github.com/Hilman27/picutreRepo/blob/master/Media2/5_Imports.PNG?raw=true)

# 7. Classes
Berbagai fungsi dan variable dapat disimpan dalam Classes. Classes memiliki Constructor yang dapat digunakan untuk mengisi nilai variable dalam class ketika dibuat. Dalam file ini terdapat class abstrak, inheritance dan Mixin. 

>class Spacecraft extends Describable{ //Class
  String name;
  DateTime launchDate;
  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
  }
  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);
  int get launchYear =>
      launchDate?.year; // read-only non-final property
  // Method.
  void describe() {
    print('Spacecraft: $name');
    if (launchDate != null) {
      int years =
          DateTime.now().difference(launchDate).inDays ~/
              365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}
class Orbiter extends Spacecraft { //Extension
  num altitude;
  Orbiter(String name, DateTime launchDate, this.altitude)
      : super(name, launchDate);
}
class Piloted { //Mixin
  int astronauts = 1;  
  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}
class PilotedCraft extends Spacecraft with Piloted{
   PilotedCraft(String name, DateTime launchDate, int crew)
   :super (name,launchDate);
}
abstract class Describable {//Abstract
  void describe();
  void describeWithEmphasis() {
    print('=========');
    describe();
    print('=========');
  }
}
void main(){
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();
  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();
  var voyager5 = Orbiter('Voyager X', DateTime(2019,11,04), 1000);
  voyager5.describe();
  var apolo6 = PilotedCraft('Apolo 6', DateTime(1999,11,27), 1);
  apolo6.describe();
  apolo6.describeCrew();
  if (apolo6.astronauts == 0) {
    throw StateError('No astronauts.');
  }
  var apolo7 = PilotedCraft('Apolo 7', DateTime(1994,11,27), 5);
  apolo7.describe();
  apolo7.describeCrew();
  apolo7.describeWithEmphasis();
}


![Classes](https://github.com/Hilman27/picutreRepo/blob/master/Media2/6_Classes.PNG?raw=true)

# 8. Try Throw and Catch
Try adalah perintah ujicoba kode di dalamnya. Apabila terdapat masalah, Throw akan mengeluarkan error dan Menghentikan eksekusi perintah selanjutnya. 
![Try Throw](https://github.com/Hilman27/picutreRepo/blob/master/Media2/7_Throw.PNG?raw=true)

Catch memiliki fungsi sama dengan throw, tapi bedanya catch menangkap error dan menulisnya,tapi masih menjalankan perintah selanjutnya.
![Try Catch](https://github.com/Hilman27/picutreRepo/blob/master/Media2/8_Catch.PNG?raw=true)

>import 'dart:io';

var name = 'Voyager I';
var year = 1977;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
  'tags': ['saturn'],
  'url': '//path/to/saturn.jpg'
};

Future main() async {
try {
  for (var object in flybyObjects) {
    var description = await File('$object.txt').readAsString();
    print(description);
  }
} on IOException catch (e) {
  print('Could not describe object: $e');
} finally {
  flybyObjects.clear();
}  
}

# 9. Async
Async menjalankan kode di dalamnya diluar loop utama, sehingga jika ada yang terjadi dengan loop utama, loop async masih tetap jalan.

>import 'dart:io';

Future<void> createDescriptions(Iterable<String> objects) async {
  for (var object in objects) {
    try {
      var file = File('$object.txt');
      if (await file.exists()) {
        var modified = await file.lastModified();
        print(
            'File for $object already exists. It was modified on $modified.');
        continue;
      }
      await file.create();
      await file.writeAsString('Start describing $object in this file.');
    } on IOException catch (e) {
      print('Cannot create description for $object: $e');
    }
  }
}
void main(){
var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  createDescriptions(flybyObjects);
}

![Async](https://github.com/Hilman27/picutreRepo/blob/master/Media2/9_Async.PNG?raw=true)