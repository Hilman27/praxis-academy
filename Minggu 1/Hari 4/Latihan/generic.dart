class Siswa{
  String nama;
  int kelas;
  int nilai;

  Siswa(String nama,int kelas,int nilai){
    setNama(nama);setKelas(kelas);setNilai(nilai);
  }

  String getNama(){
    return nama;
  }
  void setNama(String newnama){
    this.nama=newnama;
  }
  int getKelas(){
    return kelas;
  }
  void setKelas(int newKelas){
    this.kelas = newKelas;
  }
  int getNilai(){
    return nilai;
  }
  void setNilai(int newNilai){
    this.kelas = newNilai;
  }

  void pengenalan(){
    print("Namaku $nama, Kelas $kelas dan nilaiku $nilai") ;
  }
}

void main(){
  var list = List<int>();
  var sets = Set<String>();  

  print("Generic Membatasi jenis variable yang masuk ke collection");
  list = [1,2,3,4,5];
  print("List dibatasi hanya menerima nilai int");
  print("List : $list");
  
  sets = {"Kucing", "Tikus", "Sapi"};
  print("Sets dibatasi hanya menerima nilai String");
  print("Sets $sets");

  Siswa budi = Siswa("Budi", 1, 100);
  Siswa siska = Siswa("Siska", 4, 90);
  Siswa andre = Siswa("Andre", 3, 75);

  List listsiswa = List<Siswa>();
  listsiswa = [budi,siska,andre];
  print("Print list Siswa : $listsiswa");
  
  for(int i=0; i<listsiswa.length;i++){
    Siswa newstudent = listsiswa[i];
    newstudent.pengenalan();
  }
  
}