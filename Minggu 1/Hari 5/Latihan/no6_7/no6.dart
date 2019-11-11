// Future<void> getUserOrder() {
// // Imagine that this function is fetching user info but encounters a bug
//   return Future.delayed(Duration(seconds: 3), () => throw Exception('Logout failed: user ID is invalid'));
// }

// main() {
//   getUserOrder();
//   print('Fetching user order...');
// }

//-----------------------------------------
// Asynchronous
Future<String> createOrderMessage() async {
  var order = await getUserOrder();
  return 'Your order is: $order';
}

Future<String> getUserOrder() {
  // Imagine that this function is
  // more complex and slow.
  return
   Future.delayed(
     Duration(seconds: 4), () => 'Large Latte');
}

// Asynchronous
main() async {
  print('Fetching user order...');
  print(await createOrderMessage());
}

// 'Fetching user order...'
// 'Your order is: Large Latte'