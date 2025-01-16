import 'package:collection/collection.dart';
import 'package:e_comm_food/models/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier{
  //list of food menu
  final List<Food> _menu=[
    //burgers
    Food(
    name: "Classic ChesseBurger", 
    description: "A juice beef patty with melted cheddar", 
    imagePath: "lib/images/burgers/jpngwingg.com.png", 
    price: 158, 
    category: FoodCategory.burgers, 
    availableAddon: [
      Addon(name: "Extra chesse", price: 50),
      Addon(name: "Spicy Masala Cheese", price: 40),
      Addon(name: "Avacodo", price: 50),
  ],
  ),

    Food(
    name: " Aloo Tikki Burger", 
    description: "A crispy spiced potato patty (aloo tikki) served with lettuce, onions, tomatoes, and a tangy tamarind or mint chutney, sandwiched in a soft bun. Often garnished with Indian spices for an authentic flavor.", 
    imagePath: "lib/images/burgers/lpngwing.com.png", 
    price: 100, 
    category: FoodCategory.burgers, 
    availableAddon: [
     Addon(name: "Extra chesse", price: 50),
      Addon(name: "Spicy Masala Cheese", price: 40),
      Addon(name: "Avacodo", price: 50),
  ],
  ),

    Food(
    name: "Classic ChesseBurger", 
    description: "A juice beef patty with melted cheddar", 
    imagePath: "lib/images/burgers/pngwing.com (1).png", 
    price: 158, 
    category: FoodCategory.burgers, 
    availableAddon: [
      Addon(name: "Extra chesse", price: 50),
      Addon(name: "Spicy Masala Cheese", price: 40),
      Addon(name: "Avacodo", price: 50),
  ],
  ),

    Food(
    name: "Classic ChesseBurger", 
    description: "A juice beef patty with melted cheddar", 
    imagePath: "lib/images/burgers/pngwing.com (2).png", 
    price: 150, 
    category: FoodCategory.burgers, 
    availableAddon: [
      Addon(name: "Extra chesse", price: 50),
      Addon(name: "Spicy Masala Cheese", price: 40),
      Addon(name: "Avacodo", price: 50),
  ],
  ),

    Food(
    name: "Masala Chicken Burger", 
    description: "A juicy chicken patty flavored with Indian spices, topped with onion rings, tomatoes, and a spicy mayo, served in a toasted bun.", 
    imagePath: "lib/images/burgers/pngwing.com.png", 
    price: 150, 
    category: FoodCategory.burgers, 
    availableAddon: [
      Addon(name: "Extra chesse", price: 50),
      Addon(name: "Spicy Masala Cheese", price: 40),
      Addon(name: "Avacodo", price: 50),
  ],
  ),

    //salads

    Food(
    name: "Kachumber Salad", 
    description: "A refreshing mix of finely chopped cucumbers, tomatoes, onions, and green chilies, tossed with lemon juice, salt, and a hint of chaat masala.", 
    imagePath: "lib/images/salads/pngwing.com (2).png", 
    price: 100, 
    category: FoodCategory.salads, 
    availableAddon: [
      Addon(name: "Cherry Tomatoes", price: 30),
      Addon(name: "Sweet Corn", price: 30),
      Addon(name: "Sliced Bell Peppers", price: 20),
  ],
  ),

    Food(
    name: "Chana Salad", 
    description: "Boiled chickpeas mixed with chopped cucumbers, onions, tomatoes, and coriander leaves, flavored with lemon juice, cumin powder, and a pinch of chaat masala.", 
    imagePath: "lib/images/salads/pngwing.com (3).png", 
    price: 150, 
    category: FoodCategory.salads, 
    availableAddon: [
      Addon(name: "Cherry Tomatoes", price: 30),
      Addon(name: "Sweet Corn", price: 30),
      Addon(name: "Sliced Bell Peppers", price: 20),
  ],
  ),

    Food(
    name: "Sprouts Salad", 
    description: " A nutrient-packed salad with moong bean sprouts, onions, tomatoes, coriander, and green chilies, drizzled with lemon juice and black salt.", 
    imagePath: "lib/images/salads/pngwing.com (5).png", 
    price: 180, 
    category: FoodCategory.salads, 
    availableAddon: [
      Addon(name: "Cherry Tomatoes", price: 30),
      Addon(name: "Sweet Corn", price: 30),
      Addon(name: "Sliced Bell Peppers", price: 20),
  ],
  ),

    Food(
    name: "Fruit Chaat Salad", 
    description: "A mix of seasonal fruits like apples, bananas, pomegranate, and papaya, spiced with chaat masala, black salt, and a drizzle of lemon juice for a tangy-sweet flavor.", 
    imagePath: "lib/images/salads/pngwing.com (4).png", 
    price: 150, 
    category: FoodCategory.salads, 
    availableAddon: [
      Addon(name: "Cherry Tomatoes", price: 30),
      Addon(name: "Sweet Corn", price: 30),
      Addon(name: "Sliced Bell Peppers", price: 20),
  ],
  ),

    Food(
    name: "Cabbage and Carrot Slaw", 
    description: "Shredded cabbage and carrots tossed with a light yogurt-based dressing, spiced with mustard seeds and curry leaves.", 
    imagePath: "lib/images/salads/spngwing.com (1).png", 
    price: 150, 
    category: FoodCategory.salads, 
    availableAddon: [
      Addon(name: "Cherry Tomatoes", price: 30),
      Addon(name: "Sweet Corn", price: 30),
      Addon(name: "Sliced Bell Peppers", price: 20),
  ],
  ),

    //pizzas
  
    Food(
    name: "Margherita Pizza", 
    description: "A classic pizza with a thin crust, tangy tomato sauce, fresh mozzarella cheese, and a sprinkle of basil leaves. Perfect for those who love simplicity.", 
    imagePath: "lib/images/pizzas/pngwing.com (10).png", 
    price: 300, 
    category: FoodCategory.pizzas, 
    availableAddon: [
      Addon(name: "Extra chesse", price: 40),
      Addon(name: "Fresh Tomatoes", price: 40),
      Addon(name: "Sweet Corn", price: 40),
  ],
  ),

    Food(
    name: "Paneer Tikka Pizza", 
    description: "A fusion pizza featuring marinated paneer (Indian cottage cheese), capsicum, onions, and tomatoes, topped with mozzarella cheese and spicy tikka masala sauce.", 
    imagePath: "lib/images/pizzas/pngwing.com (9).png", 
    price: 350, 
    category: FoodCategory.pizzas, 
    availableAddon: [
      Addon(name: "Extra chesse", price: 40),
      Addon(name: "Fresh Tomatoes", price: 40),
      Addon(name: "Sweet Corn", price: 40),
  ],
  ),

    Food(
    name: "Tandoori Chicken Pizza", 
    description: "Grilled tandoori chicken chunks, red onions, bell peppers, and cilantro on a tomato base, topped with gooey cheese for a smoky, spicy flavor.", 
    imagePath: "lib/images/pizzas/pngwing.com (8).png", 
    price: 400, 
    category: FoodCategory.pizzas, 
    availableAddon: [
      Addon(name: "Extra chesse", price: 40),
      Addon(name: "Fresh Tomatoes", price: 40),
      Addon(name: "Sweet Corn", price: 40),
  ],
  ),

    Food(
    name: "Veggie Overload Pizza", 
    description: "A colorful mix of fresh vegetables like onions, capsicum, corn, mushrooms, olives, and jalapeños, layered over a cheesy base.", 
    imagePath: "lib/images/pizzas/pngwing.com (7).png", 
    price: 400, 
    category: FoodCategory.pizzas, 
    availableAddon: [
      Addon(name: "Extra chesse", price: 40),
      Addon(name: "Fresh Tomatoes", price: 40),
      Addon(name: "Sweet Corn", price: 40),
  ],
  ),

    Food(
    name: "Classic ChesseBurger", 
    description: "A juice beef patty with melted cheddar", 
    imagePath: "lib/images/pizzas/pngwing.com (6).png", 
    price: 158, 
    category: FoodCategory.pizzas, 
    availableAddon: [
      Addon(name: "Extra chesse", price: 158),
      Addon(name: "Bacon", price: 188),
      Addon(name: "Avacodo", price: 208),
  ],
  ),

    //desserts

    Food(
    name: "Rasmalai", 
    description: " Soft paneer discs soaked in thickened milk (rabri) flavored with cardamom, saffron, and garnished with nuts.", 
    imagePath: "lib/images/desserts/ddpngwing.com.png", 
    price: 150, 
    category: FoodCategory.desserts, 
    availableAddon: [
      Addon(name: "Extra chesse", price: 158),
      Addon(name: "Bacon", price: 188),
      Addon(name: "Avacodo", price: 208),
  ],
  ),

    Food(
    name: "Gulab Jamun", 
    description: "Deep-fried dough balls made of khoya (reduced milk) soaked in a warm sugar syrup flavored with cardamom and rose water.", 
    imagePath: "lib/images/desserts/dpngwing.com (1).png", 
    price: 100, 
    category: FoodCategory.desserts, 
    availableAddon: [
      Addon(name: "Extra chesse", price: 158),
      Addon(name: "Bacon", price: 188),
      Addon(name: "Avacodo", price: 208),
  ],
  ),

    Food(
    name: "Jalebi", 
    description: "Crispy, spiral-shaped fried batter soaked in saffron-flavored sugar syrup. Best served warm.", 
    imagePath: "lib/images/desserts/dpngwing.com (2).png", 
    price: 100, 
    category: FoodCategory.desserts, 
    availableAddon: [
      Addon(name: "Extra chesse", price: 158),
      Addon(name: "Bacon", price: 188),
      Addon(name: "Avacodo", price: 208),
  ],
  ),

    Food(
    name: "Kulfi", 
    description: "A traditional Indian ice cream made with thickened milk and flavored with pistachios, cardamom, or saffron.", 
    imagePath: "lib/images/desserts/dpngwing.com (3).png", 
    price: 120, 
    category: FoodCategory.desserts, 
    availableAddon: [
      Addon(name: "Extra chesse", price: 158),
      Addon(name: "Bacon", price: 188),
      Addon(name: "Avacodo", price: 208),
  ],
  ),

    Food(
    name: "Motichoor Ladoo", 
    description: "Tiny gram flour balls fried and mixed with sugar syrup, shaped into melt-in-the-mouth ladoos.", 
    imagePath: "lib/images/desserts/dpngwing.com.png", 
    price: 130, 
    category: FoodCategory.desserts, 
    availableAddon: [
      Addon(name: "Extra chesse", price: 158),
      Addon(name: "Bacon", price: 188),
      Addon(name: "Avacodo", price: 208),
  ],
  ),

    //drinks

    Food(
    name: "Monster", 
    description: "A blended drink made with fruits, yogurt, or milk, and sometimes enhanced with nuts or chia seeds.", 
    imagePath: "lib/images/drinks/cpngwing.com (5).png", 
    price: 150, 
    category: FoodCategory.drinks, 
    availableAddon: [
      Addon(name: "Extra chesse", price: 158),
      Addon(name: "Bacon", price: 188),
      Addon(name: "Avacodo", price: 208),
  ],
  ),

    Food(
    name: "Red Bull", 
    description: "A creamy, rich drink made with milk and melted chocolate, topped with whipped cream or marshmallows.", 
    imagePath: "lib/images/drinks/cpngwing.com (4).png", 
    price: 130, 
    category: FoodCategory.drinks, 
    availableAddon: [
      Addon(name: "Extra chesse", price: 158),
      Addon(name: "Bacon", price: 188),
      Addon(name: "Avacodo", price: 208),
  ],
  ),

    Food(
    name: "Spirte", 
    description: "Thick and creamy shakes made with milk, ice cream, and flavors like chocolate, vanilla, strawberry, or Oreo.", 
    imagePath: "lib/images/drinks/cpngwing.com (3).png", 
    price: 200, 
    category: FoodCategory.drinks, 
    availableAddon: [
      Addon(name: "Extra chesse", price: 158),
      Addon(name: "Bacon", price: 188),
      Addon(name: "Avacodo", price: 208),
  ],
  ),

    Food(
    name: "Pepsi", 
    description: "Coffee brewed slowly with cold water for a smoother and less acidic flavor, served chilled.", 
    imagePath: "lib/images/drinks/cpngwing.com (2).png", 
    price: 150, 
    category: FoodCategory.drinks, 
    availableAddon: [
      Addon(name: "Extra chesse", price: 158),
      Addon(name: "Bacon", price: 188),
      Addon(name: "Avacodo", price: 208),
  ],
  ),

    Food(
    name: " Coco-Cola", 
    description: "A frothy green tea latte made with matcha powder, milk, and sweetener.", 
    imagePath: "lib/images/drinks/cpngwing.com (1).png", 
    price: 200, 
    category: FoodCategory.drinks, 
    availableAddon: [
      Addon(name: "Extra chesse", price: 158),
      Addon(name: "Bacon", price: 188),
      Addon(name: "Avacodo", price: 208),
  ],
  ),
  ];
  

  // user cart
  final List<CartItem> _cart =[];

  //deliver addr which can update /cancel
  String _deliveryAddress='99 hollywood bly';
  /*

  Getters


  */

  List<Food> get menu =>_menu;
  List<CartItem> get cart =>_cart;
  String get deliveryAddress => _deliveryAddress;


  /*

  operators


  */

  

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item alredy with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

     // check if the list of selected addons are the same
     bool isSameAddons = 
        ListEquality().equals(item.selectedAddons, selectedAddons);

     return isSameFood && isSameAddons;
    });

    // if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
}

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }
  
  //get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  //get total number of item in cart
  int getTotleItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    notifyListeners();
  }

  //update delivery address
  void updateDeliveryAddress(String newAddress){

    _deliveryAddress=newAddress;
    notifyListeners();
  }

  /*

  Helpers


  */

  //generate a receipt
  String displayCartReceipt(){
    final receipt =StringBuffer();
    receipt.writeln("Here's Your Receipt.");
    receipt.writeln();

    //format the date include up to seconds only
    String formattedDate=
    DateFormat('yyyy-mm-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("--------");

    for (final cartItem in _cart){
      receipt.writeln(
        "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}"
      );
      if (cartItem.selectedAddons.isEmpty){
        receipt.writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");

      }
      receipt.writeln();
    }

    receipt.writeln("--------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotleItemCount()}");
    receipt.writeln("Total Items: ${_formatPrice(getTotalPrice())}");
    receipt.writeln("Delivery to:$_deliveryAddress");

    return receipt.toString();
    
  }

  //format double value into money
  String _formatPrice(double price){
    return "Rs.$price";
  }

  //format list od addons into a string
  String _formatAddons(List<Addon> addons){
    return addons.map((addon) => "${addon.name} (${_formatPrice(addon.price)})").join(",");
  }

}