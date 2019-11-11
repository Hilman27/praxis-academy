### Pengenalan Synax Dart
# 1) Struktur Program Dart

Dart terdiri atas fungsi main dan method/class lain. Fungsi main adalah method yang akan dieksekusi pertama kali, sedangkan method adalah sekumpulan perintah yang disimpan dalam satu nama.
```
// Function menyimpan set perintah yang bisa dipanggil nanti
printInteger(int aNumber) {
  print('The number is $aNumber.'); // Cetak ke console
}

// Fungsi yang dieksekusi pertama kali
main() {
  var number = 42; // Deklarasi dan Inisialisasi variable
  printInteger(number); // Pemanggilan Fungsi
}
```

# 2) Variable
Variable adalah cara program menyimpan nilai. Nilai dari sebuah variable disebut objek. Ada berbagai macam tipe variable, tapi ada sebuah jenis variable dynamic bernama dynamic variable. Variable secara default bersifat dynamic jika tidak diberi restriksi.
```
  var nama = "bob";
  print("Isi Variable nama adalah $nama");

  dynamic gantivar = 'bob';
  print("Awalnya variable gantivar menyimpan String $gantivar");
  gantivar = 5;
  print("Sekarang Variable menyimpan int $gantivar");

  var defvar;
  print("Nilai default variable $defvar");

  final waktu = DateTime.now();
  const waktu2 = 27;
  print("Final bisa menggunakan fungsi. Nilai waktu : $waktu");
  print("Const harus sudah diketahui. Nilai waktu2 : $waktu2");
```

# 3) Variable Conversion
Ada beberapa cara konversi variable menjadi jenis variable lain. Contoh di bawah ini adalah parsing dan conversion.
```
  // String -> int
  var one = int.parse('1');  
  assert(one != 1,"Salah");// Assert Throws if Condition False.  

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');
```  
# 4) String
String adalah tipe variable yang menyimpan nilai kumpulan huruf. Sebuah String harus ditulis di antara '__' atau "____".
```
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  print(s1);
  print(s2);
  print(s3);
  print(s4);

  var stringvar = "This is String";
  print("String bisa dipanggil dengan \$");
  print("misalnya $stringvar" + " Atau Append dengan +");

  var multiString = """"This is an odd way to make String
                    I know
                    These are on diffrent Lines""";
  print(multiString);

  var raw = r"You can even do it raw. Which makes /n, '', and these / kinda ignored.";
  print(raw);
```

# 5) Boolean
Boolean adalah tipe data yang hanya bisa bernilai 3 jenis saja. True, False atau NULL.

```
void main(){
  // Check for an empty string.
var fullName = '';
assert(fullName.isEmpty);

// Check for zero.
var hitPoints = 0;
assert(hitPoints <= 0);

// Check for null.
var unicorn;
assert(unicorn == null);

// Check for NaN.
var iMeantToDoThis = 0 / 0;
assert(iMeantToDoThis.isNaN);
}
```

# 6) Runes
Rune adalah serangkaian kode bermuat gambar kecil yang bisa dimasukan dalam String. Emoji juga termasuk Runes.
```
  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  print('\u2665 \u{1f44d} \u{1f605} \u{1f44f} \u{1f44f}');

  //Symbols
  var localvar=10;
  Symbol test = Symbol('localvar');
  print(test);
```

# 7) Function
Function atau Method adalah serangkaian perintah yang disimpan dalam satu nama. Method dapat meminta parameter ketika dideklarasikan, sehingga dapat digunakan di bawahnya.
```
int kasihNilai (){
  return 100;
}

int kasihEgo(int koefisienEgoisme, [String koefisien2]){
  var nilai = kasihNilai();
  nilai*= koefisienEgoisme;  
  //var nilai2 = nilai.toString() + koefisien2;
  //print(nilai2);
  // print(koefisien2??'');
  return nilai;
}

void main(){
    print ("Berapa nilai yang disimpan?");
    var nilai = kasihNilai();
    print ("Nilai : $nilai");
    
    print ("Seberapa besar egomu?");
    nilai = kasihEgo(100);
    print ("Nilai : $nilai%" );
}
```

# 8) Flow
Alur eksekusi sebuah program dapat diatur dengan flow. Ada beberapa tipe flow, yaitu if, for, while, dan switch. Perintah seperti break dapat mengeluarkan esksekusi dari sebuah loop.
```
void main() {
  var test;
  if (test==null){
    print("null bernilai null");
  } else if (test>1){
    print("Nilai Positif");
  } else {print("Nilai Negatif");
  };

  for (int i =0; i<3;i++){
    print("NonStop Sampai Tiga!");
  }

  int puter=3;
  while (true){
    print("Kamu Terjebak Selamanya!");
    puter--;
    if (puter<=0){
      break;
    }    
  }
  print("Keluar dari While!");
  
  int switchy =1;
  switch (switchy) {
    case 1 : print("Switch 1");break;
    case 2 : print("Switch 2");break;
    case 3 : print("Switch 3");break;            
    default: print("Switch is unuseable");
  }

  assert(true);
  assert(false);
}
```

# 9) Error Handling
Error Handling adalah cara developer menangkap bug dalam program. Fungsi try digunakan untuk menampung kode yang hendak dijalankan. Catch menangkap erronya dan bisa di cetak dengan print. Throw menghentikan applikasi dan memberikan error.
```
try{
    assert(false);
  } catch(e){
    print("An Error Has Occured, But i skip it");
    print(e);
  } finally {print("Get Out!");};
  
  try{
    assert(false);
  } catch(e){
    print("An Error Has Occured, But i skip it");
    print(e);
  } throw 'I am raging!!!';
```  