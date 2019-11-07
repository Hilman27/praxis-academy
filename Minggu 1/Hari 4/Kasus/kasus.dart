
class Checkclass <T>{
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

}

void main(){
  List thingsToCheck = [1,2,3,"Kucing","Tikus", true];
  for (int i=0;i<thingsToCheck.length;i++){
    Checkclass periksa = Checkclass(thingsToCheck[i]);
    periksa.cekIsi();
  }
}