class Food {
  String name;
  String image;
  double cal;
  double time;
  double rate;
  int reviews;
  bool isLiked;
  String recipe;
  String preparation;

  Food({
    required this.name,
    required this.image,
    required this.cal,
    required this.time,
    required this.rate,
    required this.reviews,
    required this.isLiked,
    required this.recipe,
    required this.preparation,
  });
}

final List<Food> foods = [
  Food(
    name: "Mie Ramen Pedas",
    image: "assets/images/ramen-noodles.jpg",
    cal: 120,
    time: 15,
    rate: 4.4,
    reviews: 23,
    isLiked: false,
    recipe: "Mie, Telur, Kaldu Ayam, Saus Pedas",
    preparation:
        "1. Rebus mie.\n2. Tambahkan kaldu ayam.\n3. Campur saus pedas.\n4. Sajikan.",
  ),
  Food(
    name: "Steak Sapi",
    image: "assets/images/beaf-steak.jpg",
    cal: 140,
    time: 25,
    rate: 4.4,
    reviews: 23,
    isLiked: true,
    recipe: "Daging Sapi, Garam, Merica, Minyak Zaitun, Bawang Putih",
    preparation:
        "1. Bumbui steak sapi.\n2. Panaskan minyak.\n3. Panggang steak sesuai selera.\n4. Sajikan.",
  ),
  Food(
    name: "Butter Chicken",
    image: "assets/images/butter-chicken.jpg",
    cal: 130,
    time: 18,
    rate: 4.2,
    reviews: 10,
    isLiked: false,
    recipe: "Daging Ayam, Mentega, Bawang Bombay, Tomat, Garam, Gula, Susu",
    preparation:
        "1. Panaskan mentega dan tumis bawang bombay hingga harum.\n2. Tambahkan daging ayam dan goreng hingga matang.\n3. Masukkan tomat, garam, dan gula, aduk hingga merata.\n4. Tuangkan susu dan biarkan mendidih.\n5. Sajikan dengan nasi hangat atau roti naan.",
  ),
  Food(
    name: "French Toast",
    image: "assets/images/french-toast.jpg",
    cal: 110,
    time: 16,
    rate: 4.6,
    reviews: 90,
    isLiked: true,
    recipe: "Roti Tawar, Telur, Susu, Gula, Kayu Manis",
    preparation:
        "1. Campur telur, susu, gula, dan kayu manis dalam mangkuk.\n2. Celupkan roti tawar ke dalam campuran telur.\n3. Goreng roti hingga kecokelatan di kedua sisi.\n4. Sajikan dengan sirup maple atau topping sesuai selera.",
  ),
  Food(
    name: "Dumplings",
    image: "assets/images/dumplings.jpg",
    cal: 150,
    time: 30,
    rate: 4.0,
    reviews: 76,
    isLiked: false,
    recipe:
        "Daging Cincang, Sayuran Cincang, Kulit Dumpling, Minyak Goreng, Saus Dumpling",
    preparation:
        "1. Campur daging cincang dan sayuran cincang.\n2. Ambil selembar kulit dumpling, isi dengan campuran daging dan sayuran.\n3. Lipat kulit dumpling dan rapikan pinggirnya.\n4. Panaskan minyak goreng, goreng dumpling hingga kecokelatan.\n5. Sajikan dengan saus dumpling.",
  ),
  Food(
    name: "Mexican Pizza",
    image: "assets/images/mexican-pizza.jpg",
    cal: 140,
    time: 25,
    rate: 4.4,
    reviews: 23,
    isLiked: false,
    recipe:
        "Tortilla, Saus Tomat, Keju, Daging Cincang, Paprika, Cabai, Bawang Putih",
    preparation:
        "1. Olesi tortilla dengan saus tomat.\n2. Taburi keju, daging cincang, paprika, dan cabai.\n3. Panggang dalam oven hingga keju meleleh.\n4. Sajikan dengan taburan bawang putih.",
  ),
];

// class Food {
//   String name;
//   String image;
//   double cal;
//   double time;
//   double rate;
//   int reviews;
//   bool isLiked;
//   String recipe;
//   String preparation;

//   Food({
//     required this.name,
//     required this.image,
//     required this.cal,
//     required this.time,
//     required this.rate,
//     required this.reviews,
//     required this.isLiked,
//     required this.recipe,
//     required this.preparation,
//   });
// }

// final List<Food> foodsList = [
//   Food(
//     name: "Mie Ramen Pedas",
//     image: "assets/images/ramen-noodles.jpg",
//     cal: 120,
//     time: 15,
//     rate: 4.4,
//     reviews: 23,
//     isLiked: false,
//     recipe: "Mie, Telur, Kaldu Ayam, Saus Pedas",
//     preparation:
//         "1. Rebus mie.\n2. Tambahkan kaldu ayam.\n3. Campur saus pedas.\n4. Sajikan.",
//   ),
//   Food(
//     name: "Steak Sapi",
//     image: "assets/images/beaf-steak.jpg",
//     cal: 140,
//     time: 25,
//     rate: 4.4,
//     reviews: 23,
//     isLiked: true,
//     recipe: "Daging Sapi, Garam, Merica, Minyak Zaitun, Bawang Putih",
//     preparation:
//         "1. Bumbui steak sapi.\n2. Panaskan minyak.\n3. Panggang steak sesuai selera.\n4. Sajikan.",
//   ),
//   Food(
//     name: "Butter Chicken",
//     image: "assets/images/butter-chicken.jpg",
//     cal: 130,
//     time: 18,
//     rate: 4.2,
//     reviews: 10,
//     isLiked: false,
//     recipe: "Daging Ayam, Mentega, Bawang Bombay, Tomat, Garam, Gula, Susu",
//     preparation:
//         "1. Panaskan mentega dan tumis bawang bombay hingga harum.\n2. Tambahkan daging ayam dan goreng hingga matang.\n3. Masukkan tomat, garam, dan gula, aduk hingga merata.\n4. Tuangkan susu dan biarkan mendidih.\n5. Sajikan dengan nasi hangat atau roti naan.",
//   ),
//   Food(
//     name: "French Toast",
//     image: "assets/images/french-toast.jpg",
//     cal: 110,
//     time: 16,
//     rate: 4.6,
//     reviews: 90,
//     isLiked: true,
//     recipe: "Roti Tawar, Telur, Susu, Gula, Kayu Manis",
//     preparation:
//         "1. Campur telur, susu, gula, dan kayu manis dalam mangkuk.\n2. Celupkan roti tawar ke dalam campuran telur.\n3. Goreng roti hingga kecokelatan di kedua sisi.\n4. Sajikan dengan sirup maple atau topping sesuai selera.",
//   ),
//   Food(
//     name: "Dumplings",
//     image: "assets/images/dumplings.jpg",
//     cal: 150,
//     time: 30,
//     rate: 4.0,
//     reviews: 76,
//     isLiked: false,
//     recipe:
//         "Daging Cincang, Sayuran Cincang, Kulit Dumpling, Minyak Goreng, Saus Dumpling",
//     preparation:
//         "1. Campur daging cincang dan sayuran cincang.\n2. Ambil selembar kulit dumpling, isi dengan campuran daging dan sayuran.\n3. Lipat kulit dumpling dan rapikan pinggirnya.\n4. Panaskan minyak goreng, goreng dumpling hingga kecokelatan.\n5. Sajikan dengan saus dumpling.",
//   ),
//   Food(
//     name: "Mexican Pizza",
//     image: "assets/images/mexican-pizza.jpg",
//     cal: 140,
//     time: 25,
//     rate: 4.4,
//     reviews: 23,
//     isLiked: false,
//     recipe:
//         "Tortilla, Saus Tomat, Keju, Daging Cincang, Paprika, Cabai, Bawang Putih",
//     preparation:
//         "1. Olesi tortilla dengan saus tomat.\n2. Taburi keju, daging cincang, paprika, dan cabai.\n3. Panggang dalam oven hingga keju meleleh.\n4. Sajikan dengan taburan bawang putih.",
//   ),
// ];
