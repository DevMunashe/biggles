class Book {
  String name,
      author,
      image,
      desc =
          'After having lived abroad for a few years, Tebogo moves back home to Botswana. The wounds...';
  int pages;
  double price;
  int reviewers;
  double rank;

  Book(
    this.name,
    this.author,
    this.image,
    this.pages,
    this.price,
    this.reviewers,
    this.rank,
    this.desc
  );
}

final List<Book> books = [
    Book('The Shrink', 'Brigitta Zwani', 'images/shrink.jpg', 300, 150, 32, 2.3,'After having lived abroad for a few years, Tebogo moves back home to Botswana. The wounds...'),
    Book('THE KILLER IN HER CLOSET', 'Mogomotsi Monana', 'images/killer.jpg', 300, 150, 57, 2.3,'Revered by some and hated by others, the Lake family takes center stage in this gripping epic...'),
    Book('Aşk Acıları', 'Patrick Avrane', 'images/ask_acilari.jpg', 300, 150, 41,
        2.3,'After having lived abroad for a few years, Tebogo moves back home to Botswana. The wounds...'),
    Book('Başlangıç', 'Dan Brown', 'images/baslangic.jpg', 300, 24.90, 81, 2.3,'After having lived abroad for a few years, Tebogo moves back home to Botswana. The wounds...'),
    Book(
        'Ben, Malala', 'Christina Lamb', 'images/ben_malala.jpg', 300, 15.50, 17, 2.3,'After having lived abroad for a few years, Tebogo moves back home to Botswana. The wounds...'),
    Book('Cani', 'James Hayman', 'images/cani.jpg', 300, 28.30, 30, 2.3,'After having lived abroad for a few years, Tebogo moves back home to Botswana. The wounds...'),
    Book('Dubrovski', 'Aleksandr Puşkin', 'images/dubrovski.jpg', 300, 12.99, 55, 2.3,'After having lived abroad for a few years, Tebogo moves back home to Botswana. The wounds...'),
    Book('Fahrenheit 451', 'Ray Bradbury', 'images/fahrenheit_451.jpg', 300, 23.50, 67,
        2.3,'After having lived abroad for a few years, Tebogo moves back home to Botswana. The wounds...'),
    Book('Fareler ve İnsanlar', 'John Steinbeck',
        'images/fareler_ve_insanlar.jpg', 300, 18.90, 22, 2.3,'After having lived abroad for a few years, Tebogo moves back home to Botswana. The wounds...'),
    Book('Göçüp Gidenler\nKoleksiyoncusu', 'Şermin Yaşar',
        'images/gocup_gidenler.jpg', 300, 24.90, 13, 2.3,'After having lived abroad for a few years, Tebogo moves back home to Botswana. The wounds...'),
    Book('Kördüğüm', 'Ayşe Kulin', 'images/kordugum.jpg', 300, 15.50, 28, 2.3,'After having lived abroad for a few years, Tebogo moves back home to Botswana. The wounds...'),
    Book('Körlük', 'Jose Saramago', 'images/korluk.jpg', 300, 28.30, 48, 2.3,'After having lived abroad for a few years, Tebogo moves back home to Botswana. The wounds...'),
    Book('Kürk Mantolu\nMadonna', 'Sabahattin Ali', 'images/KurkManto.jpg', 300, 12.99,
        102, 2.3,'After having lived abroad for a few years, Tebogo moves back home to Botswana. The wounds...'),
    Book('Simyaci', 'Paulo Coelho', 'images/simyaci.jpg', 300, 18.90, 66, 2.3,'After having lived abroad for a few years, Tebogo moves back home to Botswana. The wounds...'),
    Book('Yabancı', 'Albert Camus', 'images/yabanci.jpg', 300, 24.90, 10, 2.3,'After having lived abroad for a few years, Tebogo moves back home to Botswana. The wounds...'),
  ];
