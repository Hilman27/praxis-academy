bool isNoble(int atomicNumber) {
  var _nobleGases = [1,2,10];
  return _nobleGases.contains(atomicNumber);
}

void main(){
  var atomicNumber=1;
  assert (isNoble(atomicNumber));
}