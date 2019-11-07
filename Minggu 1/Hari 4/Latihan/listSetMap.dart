void main(){
  var list = List();
  var sets = Set();
  var map = Map();

  list = [1,1,5,4,5];
  sets = {"Kucing", "Tikus", "Sapi"};
  map  = {
    1 : "Rumah",
    2 : true,
    3 : 3,    
    "Kucing" : "Mandi",
  };

  //List
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

  //Sets
  print("Set mirip dengan list, tapi harus unique");
  sets = {1,2,3,"Kucing"};
  print("Ini isi variable sets : $sets");

  print("Kalau mencoba masukan nilai yang sama");
  sets.add(1);
  print("Nilainya akan diabaikan : $sets");
  sets.addAll(list);
  print("Menambah dengan list : $sets");
  print("");

  //Maps
  print("Map juga mirip, tapi key ditentukan user");
  print("$map");
  var value = map[1];
  print("Mengambil nilai map $value");
  value = map["Kucing"]; //Case-Sensitive
  print("Mengambil nilai map $value");

  
}