import 'dart:io';

void main() {
  print("Pilih suhu yang ingin dimasukkan: ");
  print("a. Fahrenheit    b. Reamur   c. Kelvin");
  String? input = stdin.readLineSync();
  switch (input) {
    case "a":
      {
        fahrenheit();
      }
      break;
    case "b":
      {
        reamur();
      }
      break;
    case "c":
      {
        kelvin();
      }
      break;
  }
}

fahrenheit() {
  print("Masukkan suhu dalam Fahrenheit: ");
  try {
    int fahrenheit = int.parse(stdin.readLineSync()!);
    double celsius = (fahrenheit - 32) * 5 / 9;
    print("$fahrenheit derajat Fahrenheit = $celsius derajat Celsius");
    replay();
  } catch (FormatException) {
    print("Please enter only numbers");
    fahrenheit();
  }
}

reamur() {
  print("Masukkan suhu dalam Reamur: ");
  try {
    int reamur = int.parse(stdin.readLineSync()!);
    double celsius = reamur * 5 / 4;
    print("$reamur derajat Reamur = $celsius derajat Celsius");
    replay();
  } catch (FormatException) {
    print("Please enter only numbers");
    reamur();
  }
}

kelvin() {
  print("Masukkan suhu dalam Kelvin: ");
  try {
    int kelvin = int.parse(stdin.readLineSync()!);
    double celsius = kelvin - 273;
    replay();
  } catch (FormatException) {
    print("Please enter only numbers");
    kelvin();
  }
}

replay() {
  try {
    print("Mulai lagi? (Y/N)");
    String? replay = stdin.readLineSync();
    switch (replay) {
      case "Y" || "y":
        {
          main();
        }
        break;
      case "N" || "n":
        {
          exit(0);
        }
    }
  } catch (FormatException) {
    print("Please enter only Y/N");
    replay();
  }
}
