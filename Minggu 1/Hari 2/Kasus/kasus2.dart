// Given an array of size n
// 1. Write an algorithm to return the minimum and maximum items of the array. What would be the time complexity of this algorithm?
// 2. If the algorithm you wrote isn’t recursive, write a recursive version of it using divide and conquer method. If it is recursive, you are off the hook 🙂
// 3. Find the recurrence relation of the recursive algorithm

// Same number in both arrays
// You are given two arrays and your goal is to find out if a number that included in the first array is also included in the second array.
// 1.  Write an algorithm that for a given number in the first array will go over all the numbers in the second array.
// 2. Find and write a more efficient solution. What is the time complexity?

void main(List<String> args) {
  List array1 = [1,2,3,4,5];  
  int max=array1[0],min=array1[0];  


  for (int i =0; i<array1.length;i++){
    if(array1[i]>max) max = array1[i];
    if(array1[i]<min) min = array1[i];
  }

  print("Nilai Max : $max");
  print("Nilai Min : $min");
}