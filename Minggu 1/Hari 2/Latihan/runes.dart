

void testfunc(){
  print ("Hi!");
}

main() {
  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  print('\u2665 \u{1f44d} \u{1f605} \u{1f44f} \u{1f44f}');

  //Symbols
  var localvar=10;
  Symbol test = Symbol('localvar');
  print(test);
  
}