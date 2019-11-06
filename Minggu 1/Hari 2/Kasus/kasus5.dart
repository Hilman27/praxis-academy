//Given a sorted array T of integers, write an algorithm (using pseudocode) that searches for T[i] = i
//In case of success, it will return the value of i, otherwise, it will return -1.

bool find_IndexByValue(List array, int index, int value){
  if(array[index]==value){
    return true;
  } else {
    return false;
  }
}

void main(){
  List array1 = [1,2,3,6,7,10,9];
  
  int valToCompare = 9;
  int indexToCompare = 6;
  
  print(find_IndexByValue(array1, indexToCompare, valToCompare));

}