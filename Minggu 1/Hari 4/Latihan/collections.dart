import 'dart:collection';

void main(){
    var siswa = HashMap(); //Note. cannot order HashMap. FiFO
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
}