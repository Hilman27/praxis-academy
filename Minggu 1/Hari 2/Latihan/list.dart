void main() {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);

  var list2 = [0, ...list]; //...list memberi semua anggota list. Tanpa titik, list menjadi anggota list.
  assert(list2.length == 4);
  assert(list2[2] == 1);

   //Collection
  var promoActive = true;
  var forlimit = 5;
  var nav = [
  'Home',
  'Furniture',
  'Plants',
  //if (promoActive) 'Outlet', //THIS WORKS?!
  for (int i=0; i<5;i++)  'Outlet' //IT JUST WORKS!
  ];
  //assert(nav.length == 9);

  //Sets
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  halogens.add('Test');
  assert(halogens.length==6);  

  var tesest = {'tank'};
  tesest.addAll(halogens);
  assert(tesest.length==7); //Apparently they ignore the for.
  
  bool boolean =true;
  print(boolean);

}