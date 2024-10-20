import 'dart:io';

void main() {
  //20,10,5,1 banknot değerlerim
  // Kullanıcıdan para değerini alma
  print('Banknotlara ayırmak istediğiniz para değerini girin:');
  String? input = stdin.readLineSync(); // Kullanıcıdan girdi aldım

  if (input != null) {
    int amount = int.parse(input); // Girdiyi tam sayıya çevir

    // Banknot sayısını tutacak değişkenler
    int count20 = 0;
    int count10 = 0;
    int count5 = 0;
    int count1 = 0;

    // 20 TL banknotu kullanma
    if (amount >= 20) {
      count20 = amount ~/ 20; // 20 TL banknot sayısını hesapla
      amount = amount % 20; // Kalan miktarı güncelle
    }

    // 10 TL banknotu kullanma
    if (amount >= 10) {
      count10 = amount ~/ 10; // 10 TL banknot sayısını hesapla
      amount = amount % 10; // Kalan miktarı güncelle
    }

    // 5 TL banknotu kullanma
    if (amount >= 5) {
      count5 = amount ~/ 5; // 5 TL banknot sayısını hesapla
      amount = amount % 5; // Kalan miktarı güncelle
    }

    // 1 TL banknotu kullanma
    if (amount >= 1) {
      count1 = amount; // Kalan miktar 1 TL banknot sayısıdır
    }

    // Sonuçları yazdırma
    print('Geri vermeniz gereken banknotlar:');
    if (count20 > 0) {
      print('20 TL banknot: $count20 adet');
    }
    if (count10 > 0) {
      print('10 TL banknot: $count10 adet');
    }
    if (count5 > 0) {
      print('5 TL banknot: $count5 adet');
    }
    if (count1 > 0) {
      print('1 TL banknot: $count1 adet');
    }
  } else {
    print('Geçersiz giriş.');
  }
}
