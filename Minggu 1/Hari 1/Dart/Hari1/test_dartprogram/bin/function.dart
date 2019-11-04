int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main(){
  var num = 20;
  var result = fibonacci(num);
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  print("Bilangan fibonacci ke-"+ num.toString() +" adalah "+result.toString());

  flybyObjects.where((name) => name.contains('turn')).forEach(print);

}