void main() {
  for (var i = 20; i >= 1; i--) {
    print('My name is Golden $i');
  }

  /* Null safety */
  String? nama;
  print(nama ?? "Golden");

  /* Late variable*/
  late String name;
  name = "Christian";
  print(name);
}
