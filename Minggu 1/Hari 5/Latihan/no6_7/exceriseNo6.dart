Future<String> getRole(){  
  return Future.value("Admin");
}

Future<int> getLoginAmount(){  
  return Future.value(57);
}

Future<String> reportUserRole() async {
  var username = await getRole();
  return 'User role: $username';
}

Future<String> reportLogins() async {
  try{
    var logins = await getLoginAmount();    
    return 'Total number of logins: $logins';
  }catch(e){
    return 'Error $e';
  }
  
}

Future<void> main() async {
  Future<String> role = new Future.value(getRole());
  print (await reportUserRole());
  print (await reportLogins());
}