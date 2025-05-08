Future<void> hello() {
  return Future.delayed(Duration(seconds: 2), () {
    print('Programmer Zaman Now');
  });
}

Future<String> sayHello(String name) {
  /*return Future.delayed(Duration(seconds: 2), () {
    //return 'Hello $name';
    //throw Error();
    return Future.error(Exception('Ups'));
  });*/
  //return Future.error(Exception('Ups ..'));
  return Future.value('Hello $name');
}

void main() {
  //hello();
  sayHello('Eko')
      //.onError((error, StackTrace) => 'Sukses')
      .whenComplete(() => print('Done Future'))
      .then((onValue) => print(onValue))
      .catchError((error) => print('Error with message ${error.message}'));

  //print('Done');
}
