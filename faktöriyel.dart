import 'dart:io';

// Rekürsif faktöriyel fonksiyonu
int factorial(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

void main() {
  // Kullanıcıdan giriş alma
  print('Bir pozitif tam sayı girin:');
  String? input = stdin.readLineSync();

  // Girişin geçerliliğini kontrol etme
  if (input != null) {
    int number = int.parse(input);

    if (number < 0) {
      print('Lütfen pozitif bir tam sayı girin.');
    } else {
      // Faktöriyel hesaplama
      int result = factorial(number);
      print('$number sayısının faktöriyeli: $result');
    }
  } else {
    print('Geçersiz giriş.');
  }
}
