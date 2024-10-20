import 'dart:io';

// Ana fonksiyon
void main() {
  print("Birinci sayıyı girin:");
  double sayi1 =
      double.parse(stdin.readLineSync()!); // Kullanıcıdan ilk sayı alınır

  print("İkinci sayıyı girin:");
  double sayi2 =
      double.parse(stdin.readLineSync()!); // Kullanıcıdan ikinci sayı alınır

  print("Yapmak istediğiniz işlemi seçin (+, -, *, /):");
  String? islem = stdin.readLineSync(); // İşlem seçimi yapılır

  // İşlem türüne göre fonksiyon çağırılır
  if (islem != null) {
    switch (islem) {
      case '+':
        print("Sonuç: ${toplama(sayi1, sayi2)}");
        break;
      case '-':
        print("Sonuç: ${cikarma(sayi1, sayi2)}");
        break;
      case '*':
        print("Sonuç: ${carpma(sayi1, sayi2)}");
        break;
      case '/':
        if (sayi2 != 0) {
          print("Sonuç: ${bolme(sayi1, sayi2)}");
        } else {
          print("Hata: Sıfıra bölme hatası!");
        }
        break;
      default:
        print("Geçersiz işlem seçtiniz.");
    }
  }
}

// Toplama fonksiyonu
double toplama(double a, double b) {
  return a + b;
}

// Çıkarma fonksiyonu
double cikarma(double a, double b) {
  return a - b;
}

// Çarpma fonksiyonu
double carpma(double a, double b) {
  return a * b;
}

// Bölme fonksiyonu
double bolme(double a, double b) {
  return a / b;
}
