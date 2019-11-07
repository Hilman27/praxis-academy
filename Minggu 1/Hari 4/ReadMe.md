### Hari 4 : Collection and Generic

## Collection
Collection adalah variable yang mengumpulkan banyak data. Dalam Darts ada beberapa Jenis Collection,di antaranya adalah :
1) List
2) Set
3) Map
4) Hashed Map/Set


# 1) List
List adalah sekelompok variable yang dikumpulkan dalam satu collection. Secara default, List dapat menyimpan berbagai macam variable, tapi dapat dibatasi hanya satu variable dengan generic.

>var list = List();

atau

>var list = [1,1,5,4,5];

Kode :

```dart
print("Isi Variable List adalah : $list");
list.add(5);
list.add("Kucing");
list.add("Nomer.7");
list.add(false);
print("Sekarang isinya adalah : $list");

var list2 = [1,2,3,...list];
  print("Sekarang dikopi ke list2 : $list2");
  list2.removeAt(5);
  print("Hilangkan Index no. 5 : $list2");
  list2.remove(3);
  print("Hilangkan Nilai 3 : $list2");
  list2.removeRange(3, list2.length);
  print("Kemudian dihapus : $list2");
  print("");
```
Hasil 

>Isi Variable List adalah : [1, 1, 5, 4, 5]
Sekarang isinya adalah : [1, 1, 5, 4, 5, 5, Kucing, Nomer.7, false]
Sekarang dikopi ke list2 : [1, 2, 3, 1, 1, 5, 4, 5, 5, Kucing, Nomer.7, false]
Hilangkan Index no. 5 : [1, 2, 3, 1, 1, 4, 5, 5, Kucing, Nomer.7, false]
Hilangkan Nilai 3 : [1, 2, 1, 1, 4, 5, 5, Kucing, Nomer.7, false]
Kemudian dihapus : [1, 2, 1]

# 2) Set

Sama seperti List, Set juga merupakan collection yang dapat diisi Variable dan dibatasi dengan generic. Namun Set hanya mengizinkan nilai unik. Yang artinya, semua nilai input yang bernilai sama tidak akan membuat elemen baru di dalam collection.

> print("Set mirip dengan list, tapi harus unique");
  sets = {1,2,3,"Kucing"};
  print("Ini isi variable sets : $sets");
  print("Kalau mencoba masukan nilai yang sama");
  sets.add(1);
  print("Nilainya akan diabaikan : $sets");
  sets.addAll(list);
  print("Menambah dengan list : $sets");
  print("");

Hasil 

>Set mirip dengan list, tapi harus unique
Ini isi variable sets : {1, 2, 3, Kucing}
Kalau mencoba masukan nilai yang sama
Nilainya akan diabaikan : {1, 2, 3, Kucing}
Menambah dengan list : {1, 2, 3, Kucing, 5, 4, Nomer.7, false}

# 3) Map

Map juga serupa dengan List. Namun key untuk setiap elemen ditentukan oleh pengguna.

Kode :
>print("Map juga mirip, tapi key ditentukan user");
  print("$map");
  var value = map[1];
  print("Mengambil nilai map $value");
  value = map["Kucing"]; //Case-Sensitive
  print("Mengambil nilai map $value");
  
Hasil :

  >Map juga mirip, tapi key ditentukan user
{1: Rumah, 2: true, 3: 3, Kucing: Mandi}
Mengambil nilai map Rumah
Mengambil nilai map Mandi

# 4) Hased Map/Set

Hashed Map/Set memiliki kemiripan dengan versi normalnya. Bedanya, hashed Map/Set tidak diurutkan. 

>var siswa = HashMap(); //Note. cannot order HashMap. FiFO
    siswa["Nama"] = "Bob";
    siswa["Pendidikan"] = "SMA";
    siswa["Usia"] = 16;
    print("HashMap Siswa : $siswa");
    var hashSets = HashSet();
    hashSets.add(100);
    hashSets.add(75);
    hashSets.add(67);
    hashSets.add(34);
    hashSets.add(54);
    hashSets.add(100);
    hashSets.add(54);

    print ("HashSets : $hashSets");

Hasil :

>HashMap Siswa : {Pendidikan: SMA, Usia: 16, Nama: Bob}
HashSets : {34, 67, 75, 100, 54}

##Generic
Generic adalah cara untuk melimitasi jenis variable yang dapat diinput ke dalam method dan Collection. Namun Generic juga dapat digunakan untuk mengatasi berbagai jenis variable input.

Contoh Penggunaan Generic
>var list = List<int>();
  var sets = Set<String>();  

>  print("Generic Membatasi jenis variable yang masuk ke collection");
  list = [1,2,3,4,5];
  print("List dibatasi hanya menerima nilai int");
  print("List : $list");
  
>  sets = {"Kucing", "Tikus", "Sapi"};
  print("Sets dibatasi hanya menerima nilai String");
  print("Sets $sets");
  
 Hasil :
 
 >Generic Membatasi jenis variable yang masuk ke collection
List dibatasi hanya menerima nilai int
List : [1, 2, 3, 4, 5]
Sets dibatasi hanya menerima nilai String
Sets {Kucing, Tikus, Sapi}

Contoh Class Generic :
>class Checkclass <T>{
  T checkItem;
  Checkclass(T this.checkItem);
  T getItem(){
    return checkItem;
  }
  void setItem (T newitem){
    this.checkItem = newitem;
  }
  void cekIsi(){
  //String tipe = variable.runtimeType; 
  print("variable adalah tipe ${this.checkItem.runtimeType}");
  //print(variable.runtimeType);
  print("Isi variable adalah : ${this.checkItem}");
}

Class Generic di atas dapat digunakan dalam loop berbagai tipe variable. Berikut adalah sisa kodenya :

>void main(){
  List thingsToCheck = [1,2,3,"Kucing","Tikus", true];
  for (int i=0;i<thingsToCheck.length;i++){
    Checkclass periksa = Checkclass(thingsToCheck[i]);
    periksa.cekIsi();
  }
}

Hasil :
>variable adalah tipe int
Isi variable adalah : 3
variable adalah tipe String
Isi variable adalah : Kucing
variable adalah tipe String
Isi variable adalah : Tikus
variable adalah tipe bool
Isi variable adalah : true