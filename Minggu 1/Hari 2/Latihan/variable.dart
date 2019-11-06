
void main(){
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
  
 
}
