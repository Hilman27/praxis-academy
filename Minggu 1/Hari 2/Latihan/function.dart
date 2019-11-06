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