## Minggu 2, Hari 1 : Flutter

Flutter adalah Framework dalam membuat applikasi mobile. Pembelajaran hari ini adalah installasi dan pengenalan dasar project Flutter.

# 1) Installasi
Flutter diinstall pada IDE (dalam contoh ini Visual Studio Code) dengan cara menambahkan path SDKnya ke PATH enviroment variable. Setelah sdk terinstall, IDE dapat mencari plugin Dart dan Flutter untuk mempermudah pemerograman. Jika installasi sudah benar, flutter akan dapat dijalankan dari terminal dengan perintah "flutter". Jalankan flutter doctor untuk mengetahui kesiapan editor. Apabila command flutter tidak muncul, berati ada kesalahan installasi SDK. Contoh hasil Flutter Doctor :
```
flutter doctor -v
[√] Flutter (Channel stable, v1.9.1+hotfix.6, on Microsoft Windows [Version 10.0.18362.418], locale en-US)
    • Flutter version 1.9.1+hotfix.6 at D:\sdk\flutter_windows_v1.9.1\flutter
    • Framework revision 68587a0916 (8 weeks ago), 2019-09-13 19:46:58 -0700 
    • Engine revision b863200c37
    • Dart version 2.5.0
[√] Android toolchain - develop for Android devices (Android SDK version 28.0.3)
    • Android SDK at D:\Android\Sdk
    • Android NDK location not configured (optional; useful for native profiling support)
    • Platform android-28, build-tools 28.0.3
    • ANDROID_HOME = D:\Android\Sdk
    • Java binary at: D:\Android\Studio\jre\bin\java
    • Java version OpenJDK Runtime Environment (build 1.8.0_202-release-1483-b03)
    • All Android licenses accepted.
[!] Android Studio (version 3.5)
    • Android Studio at D:\Android\Studio
    X Flutter plugin not installed; this adds Flutter specific functionality.
    X Dart plugin not installed; this adds Dart specific functionality.
    • Java version OpenJDK Runtime Environment (build 1.8.0_202-release-1483-b03)
[√] VS Code (version 1.40.0)
    • VS Code at C:\Users\Mocha\AppData\Local\Programs\Microsoft VS Code
    • Flutter extension version 3.6.0
[!] Connected device
    ! No devices available
```

Apabila Flutter sudah siap digunakan, gunakan "flutter: newproject" untuk membuat project flutter baru. Ditahap ini dibutuhkan emulator (atau Smartphone Android) untuk menguji coba program. Apabila project terbuat dengan lancar, jika dijalankan di emulator akan menghasilkan applikasi seperti berikut :

![Project Flutter Awal](1_TestRun.PNG)

Project dapat diedit di tengah emulasi dan langsung berpengaruh di emulasi apabila menggunakan hot reload (Icon petir kuning).

![Hot](2_Bar.PNG)

# 2) Class Widget
Framework Flutter menggunakan dart sebagai bahasa pemerograman dan mempunyai tata pemerograman deskriptif, berbeda dengan bahasa pemerograman seperti java yang imperatif. Jika pemerograman imperatif disusun atas class yang runtut atas ke bawah, pemerograman deskriptif adalah pemerograman yang terdiri atas template-template yang disebut widget.

Dalam contoh di bawah fungsi main menjalankan class MyApp yang memiliki dua komponen; Home dan Tittle. Tittle tidak terlihat karena merupakan nama dari applikasi, sedangkan yang terlihat dengan mata adalah bagian home yang terdiri atas scaffold dan body. Scaffold merupakan garis biru bertuliskan "Welcome to Flutter) dan body adalah tubuh putih kosong yang hanya bertuliskan "Hello World"

```dart
void main() => runApp(MyApp()); //Main memanggil class MyApp

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
```
Kode di atas akan menghasilkan program berikut di emulasi : 
![Hello World!](4_HelloWorld.PNG)

# 3) Import
Flutter dapat mengimport fungsi dari package luar. Package harus tertuliskan di pubspec.yaml di bagian dependencies. Berikut contoh dependencies :
  ```
  dependencies:
  flutter:
    sdk: flutter
  
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^0.1.2

  english_words: ^3.1.0
  ```
Package yang akan dipakai dari luar adalah english_words yang menyediakan berbagai kata dalam bahasa inggris.

Fungsi dalam package dapat dipanggil setelah import ditambahkan dengan syntax import. Cara pemakaian nya adalah dengan inisialisasi objek class dari package tersebut.

>final wordPair = WordPair.random();

kemudian dipanggil menggunakan objek class yang sudah terinsialisasi tersebut.
```
home: Scaffold(
        appBar: AppBar(
          title: Text('This is AppBar Tittle'),
        ),
        body: Center(                    
          child: Text(wordPair.asPascalCase),
        ),
```
Berikut adalah hasil applikasi perubahan di atas. Hello World diganti dengan kata inggris acak.
![Hasil Import](5_wordImports.PNG)

# 3) Stateful Widget
Widget adalah sebuah class, maka bisa ditambahkan berbagai method dan bahkan class lain ke dalamnya. Dalam percobaan ini pemanggilan di atas diubah cara panggilnya. Dua class dibuat, RandomWords dan RandomWordsState. RandomWords memanggil RandomWordsState, sedangkan RandomWordsState berisikan pemanggilan  inisialisasi class WordPair dari package english_words. RandomWords kemudian dipanggil dari text di dalam body home.

```
home: Scaffold(
        appBar: AppBar(
          title: Text('This is AppBar Tittle'),
        ),
        body: Center(                    
          child: RandomWords(),
        ),
      ),
```

>class RandomWords extends StatefulWidget { //This class calls RandomWordState
  @override
  RandomWordsState createState() => RandomWordsState();}
 
``` 
class RandomWordsState extends State<RandomWords> { //This class has some stuff to do  
  @override 
  Widget build(BuildContext context) { //Build Method of class    
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
```

# 4) Widget Mass Production
Widget adalah template, sehingga dapat di duplikasi berkali-kali dengan detail berbeda. Berikut adalah class _buildSuggestions yang membuat sebuah daftar list berisikan kata-kata acak dari random words sebelumnya. 

```Widget _buildSuggestions() {
  return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        if (i.isOdd) return Divider(); /*2*/

        final index = i ~/ 2; /*3*/
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10)); /*4*/
        }
        return _buildRow(_suggestions[index]);
      });
}```

Class ini mengatur jumlah list yang ditampilkan, tapi isi dari list tersebut diatur dalam _buildRow. Dalam class ini terdapat struktur yang sedikit berbeda dengan project Hello World. Tittle masih ada, tapi body tidak ada. Tittle di sini malah memiliki pemanggilan method dari package yang diimport, kemudian ditambah trailing berisi icon dan tambahan interaksi tap yang akan merespon jika disentuh.

```
Widget _buildRow(WordPair pair) {
  final bool alreadySaved = _saved.contains(pair);
  return ListTile(
    title: Text(
      pair.asPascalCase,
      style: _biggerFont,
    ),
    trailing: Icon(    
      alreadySaved ? Icons.favorite : Icons.favorite_border,
      color: alreadySaved ? Colors.red : null,
    ), 
    onTap: () {      // Add 9 lines from here...
      setState(() {
        if (alreadySaved) {
          _saved.remove(pair);
        } else { 
          _saved.add(pair); 
        } 
      });
    },
  );
 ```
 Berikut adalah hasil applikasi.
 ![Hasil penambahan List dan Icon](8_Interactivity.PNG)
 
# 5) Navigation
Applikasi Flutter dapat melompat dari satu halaman app ke halaman lain menggunakan navigation. Fungsi di bawah ini adalah method _pushSaved. Metode ini menggunakan Navigator.push untuk membuat halaman app baru.

```
void _pushSaved(){
    Navigator.of(context).push(
      MaterialPageRoute<void>(   // Add 20 lines from here...
        builder: (BuildContext context) {
          final Iterable<ListTile> tiles = _saved.map(
            (WordPair pair) {
              return ListTile(
                title: Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );
          final List<Widget> divided = ListTile
            .divideTiles(
              context: context,
              tiles: tiles,
            )
            .toList();

          return Scaffold(      
          appBar: AppBar(
            title: Text('Saved Suggestions'),
          ),
          body: ListView(children: divided),
          );   
        },
      ),                    
    );
  }
```

Laman baru yang dibuat
![Navigasi](9_Navigation.PNG)

# 6) Theme

Skema warna dari class Flutter dapat diganti menggunakan "theme : Colors". 
![Pergantian tema warna](10_ThemeEdit.PNG)
```
return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: RandomWords(),
    );
  }
```
Dalam contoh ini, warna tema yang sebelumnya biru diganti menjadi putih menggunakan tambahan 
>theme: ThemeData(
        primaryColor: Colors.white,
      ),