// Maximum and Minimum differences
// Given an array of size n
// 1. Write an algorithm to return the maximum difference between two elements
// 2. Write an algorithm to return the minimum difference between two elements. What is the time complexity of the algorithm you wrote?

void main(List<String> args) {
  List array1 = [2,5,8,12,25];  
  int max=array1[0],min=array1[0];  
  


  for (int i =0; i<array1.length;i++){
    for (int j =0; j<array1.length;j++){
      if(i!=j){
      int kurang = array1[i] - array1[j];
      if (kurang<0){
        kurang*=-1;
      }
      if(kurang>max) max = kurang;
      if(kurang<min) min = kurang;
      }
      
    }
  }

  print("Nilai Max : $max");
  print("Nilai Min : $min");
}