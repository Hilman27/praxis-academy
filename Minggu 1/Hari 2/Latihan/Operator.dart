void main(){
  double nilai1 = (1+3)/4 * 10;  
  assert(nilai1<=100);

  var nullval;
  assert(nullval==null);
  if (nilai1<=100 && nullval==null){
    print("Operation Done");
  }else {
    print("Operation Else");
  }
}