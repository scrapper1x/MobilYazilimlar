library product;

class Product {
  //ürünün alacağı değerler
  var name;
  var barcode;
  var price;
  var color;
  var piece;
  var category;
  Product(String name, String barcode, int price, String color, int piece,
      String category) {
    this.name = name;
    this.barcode = barcode;
    this.price = price;
    this.color = color;
    this.piece = piece;
    this.category = category;
  }
  functions() {
    //listeleme kolaylığı sağlayacak fonksiyon
    List<dynamic> Urun = [
      this.barcode,
      this.color,
      this.name,
      this.piece,
      this.price,
      this.category
    ];
    return Urun;
  }
}

String Guncelleme(barcode, yeniBarkod) {
  return "Barkodu " +
      barcode +
      " olan ürünün yeni barkodu şu şekildedir: \n" +
      (yeniBarkod + 1).toString();
}

Ekleme(List<String> liste, String a) {
  liste.add(a);
  print("Yeni ürün eklendi");
}

Silme(List azo, String a) {
  azo.remove(a);
  print("Ürün " + a + " silindi");
}

Listeleme(List<dynamic> ozellikler) {
  return ozellikler;
}

void main(List<String> args) {
  var product = new Product("Ayakkabı", "AAA123", 4000, "kırmızı", 5, "Giyim");

  var product2 = new Product("Kazak", "BBB234", 749, "yeşil", 3, "Giyim");

  var product3 =
      new Product("Bilgisayar", "CCC987", 4000, "kırmızı", 8, "Elektronik");

  var product4 = new Product("Parfüm", "DDD526", 2342, "mavi", 15, "Kozmetik");

  List<String> urunListesi = [];
  //  Ürünler Listeleniyor...
  print("Ürünler şu şekildedir:");
  print(urunListesi);
  //  Boş Listeye yeni ürünler ekleniyor...
  Ekleme(urunListesi, product.barcode);

  print("Ürünler şu şekildedir:");
  print(urunListesi);

  Ekleme(urunListesi, product2.barcode);

  print("Ürünler şu şekildedir:");
  print(urunListesi);

  Ekleme(urunListesi, product3.barcode);

  print("Ürünler şu şekildedir:");
  print(urunListesi);

  Ekleme(urunListesi, product4.barcode);

  print("Ürünler şu şekildedir:");
  print(urunListesi);
  print("\n");
//  Ürünler Listesinin 2. ürünü siliniyor...
  Silme(urunListesi, product2.barcode);
  print(urunListesi);
  print("\n");

//  Ürünler Listesinin ilk barkodunu tanımladığımız a değişkeni
//  ile değiştiriyoruz ve her yeni güncellemede a'yı 1 arttırıyoruz
//  böylelikle her ürünün barkodu farklı oluyor..

  var a = 1111;
  print("Ürün güncelleniyor");
  print(Guncelleme(product3.barcode, a));
  //barkodu kalıcı değiştiriyoruz
  product3.barcode = (a + 1).toString();

//aynı uygulamaları bir diğer ürüne uyguluyoruz
  print("Ürün güncelleniyor");
  print(Guncelleme(product2.barcode, a + 1));
  product2.barcode = (a + 2).toString();

  print(urunListesi);
  print("\nİlk ürünün özellikleri");

  //manuel olarak tanımlanmış ürün özellikleri
  List<dynamic> urunOzellikleri = [
    "\nBarkod: " +
        product.barcode +
        " \n" +
        "Renk: " +
        " " +
        product.color +
        "\n" +
        "İsim:" +
        " " +
        product.name +
        "\n" +
        "Stok Adedi:" +
        " " +
        product.piece.toString() +
        "\n"
            "Fiyat: " +
        " " +
        product.price.toString() +
        "\n"
            "Kategori: " +
        " " +
        product.category.toString()
  ];

  //class'ın içerisinde oluşturduğumuz fonksiyon
  //sayesinde yazdırdığımız özellikler
  print(Listeleme(urunOzellikleri));
  print("\n");

  print(product.functions());
  print(product2.functions());
  print(product3.functions());
  print(product4.functions());
}
