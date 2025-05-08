Future<String> sayHello(String name) {
  return Future.value('Hello $name');
}

void main() {
  sayHello('Eko')
      .then((value) => print(value))
      .catchError((error) => print('Error with message ${error.message}'))
      .whenComplete(() => print('All Done'));

  print('Done');
}
