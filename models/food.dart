class Food {
  final String name;            //cheese burger
  final String description;     //a burger full of cheese
  final String imagePath;       //lib/images/cheese_burger.png
  final double price;           //148
  final FoodCategory category;  //burger
  List<Addon> availableAddon;   //[ extra cheese,sauce ]

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddon,
});

}

//food category

enum FoodCategory{
  burgers,
  salads,
  pizzas,
  desserts,
  drinks,

}

// food addons

class Addon{
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,

  });
}
