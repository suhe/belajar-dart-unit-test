Future<String> name() {
  return Future.value('Eko Kurniawan Khannebo');
}

void main() {
  name()
      .then((value) => value.split(" ")) // Future <List<String>>
      .then((value) => value.reversed) //future<iterable<String>>
      .then((value) => value.map((e) => e.toUpperCase()))
      .then((value) => print(value));

  print('Done');
}
