// Same number in both arrays
// You are given two arrays and your goal is to find out if a number that included in the first array is also included in the second array.
// 1.  Write an algorithm that for a given number in the first array will go over all the numbers in the second array.
// 2. Find and write a more efficient solution. What is the time complexity?

void main(List<String> args) {
  List array1 = [1,2,3,4,5,10];
  List array2 = [1,3,5];
  List arraySama =[0];
  bool same;

  for (int i = 0; i<array1.length;i++){
    for(int j=0; j<array2.length;j++){
      if(array1[i]==array2[j]){
        same=true;
        break;
      }
    }
    if(same){
      arraySama.add(array1[i]);
      same=false;
    }
  }

  arraySama.removeAt(0);

  for(int i=0; i<arraySama.length;i++){
    print(arraySama[i]);
  }
}