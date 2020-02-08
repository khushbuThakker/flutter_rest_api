import 'dart:io';
//This is example of for Future<T>

String createOrderMessage () {
  var order = fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() {
  // Imagine that this function is more complex and slow
  return Future.delayed(Duration(seconds: 4), () => 'Large Latte');
}

void main () {
  print(createOrderMessage());
}



//Now let's see future example


/*
void main() {
  fetchUserOrder();
  print('Fetching user order...');
}*/


//Now let's see future with async and await keyword

/*
* Future<String>  createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

Future<String>  fetchUserOrder() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
      Duration(seconds: 2),
      () => 'Large Latte',
    );

Future<void>  main() async {
  print('Fetching user order...');
  print(await createOrderMessage());
}
* */

