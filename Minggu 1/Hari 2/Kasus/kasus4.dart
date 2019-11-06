//Maximum between given indexes
//1. Write an algorithm to return the index of the maximum value between two given indexes in a given array.

void main(){
  List array1 = [1,2,3,4,5,10,9,2,1];  
  int max;

  for (int i =0; i<array1.length;i++){
    if(i==0){
      max=array1[i];
    }
    if(array1[i]>array1[max]) max = i;    
  }
  
  print("Index Max : $max");
  print("Nilai Max : " + array1[max].toString());

}