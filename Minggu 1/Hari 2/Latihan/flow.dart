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