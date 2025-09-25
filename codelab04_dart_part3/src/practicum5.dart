void main(List<String> args) {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var number = (1, 2);
  print('Before swap: $number');

  var swapped = tukar(number);
  print('After swap: $swapped');

  (String, int) mahasiswa = ("Golden Christian", 2341720216);
  print(mahasiswa);

  var mahasiswa2 = ("Golden Christian / 2341720216", a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

