void main (){
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  print(s1);
  print(s2);
  print(s3);
  print(s4);

  var stringvar = "This is String";
  print("String bisa dipanggil dengan \$");
  print("misalnya $stringvar" + " Atau Append dengan +");

  var multiString = """"This is an odd way to make String
                    I know
                    These are on diffrent Lines""";
  print(multiString);

  var raw = r"You can even do it raw. Which makes /n, '', and these / kinda ignored.";
  print(raw);

}