import 'package:flutter/material.dart';

import 'food.dart';

class Resturant extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu = [
    //burgers
    Food(
        name: "Tomato Burger",
        description: "A juicy veg burger made with love from RAHUL",
        imagepath: "lib/images/burger/tomato_burger.avif",
        price: 0.99,
        category: Foodcategory.burgers,
        availableAddons: [
          Addon(name: "extra chess", price: 0.12),
          Addon(name: "extra sause", price: 0.12),
          Addon(name: "extra chille", price: 0.12),
        ]),

    Food(
        name: "Hot Burger",
        description: "A juicy veg burger made with love from RAHUL",
        imagepath: "lib/images/burger/hot_burger.webp",
        price: 0.99,
        category: Foodcategory.burgers,
        availableAddons: [
          Addon(name: "extra chess", price: 0.12),
          Addon(name: "extra sause", price: 0.12),
          Addon(name: "extra chille", price: 0.12),
        ]),

    Food(
        name: "SPL Burger",
        description: "A juicy veg burger made with love from RAHUL",
        imagepath: "lib/images/burger/spl_burger.webp",
        price: 0.99,
        category: Foodcategory.burgers,
        availableAddons: [
          Addon(name: "extra chess", price: 0.12),
          Addon(name: "extra sause", price: 0.12),
          Addon(name: "extra chille", price: 0.12),
        ]),

    Food(
        name: "cheese Burger",
        description: "A juicy veg burger made with love from RAHUL",
        imagepath: "lib/images/burger/cheese_burger.webp",
        price: 0.99,
        category: Foodcategory.burgers,
        availableAddons: [
          Addon(name: "extra chess", price: 0.12),
          Addon(name: "extra sause", price: 0.12),
          Addon(name: "extra chille", price: 0.12),
        ]),

    Food(
        name: "veggi Burger",
        description: "A juicy veg burger made with love from RAHUL",
        imagepath: "lib/images/burger/veggi_burger.webp",
        price: 0.99,
        category: Foodcategory.burgers,
        availableAddons: [
          Addon(name: "extra chess", price: 0.12),
          Addon(name: "extra sause", price: 0.12),
          Addon(name: "extra chille", price: 0.12),
        ]),
    //desserts
    Food(
        name: "Berry Tars ",
        description: "A drink made with love from RAHUL",
        imagepath: "lib/images/desserts/berrytars_dessert.webp",
        price: 0.99,
        category: Foodcategory.desserts,
        availableAddons: [
          Addon(name: "extra ice", price: 0.12),
          Addon(name: "extra sugar", price: 0.12),
          Addon(name: "extra cup", price: 0.12),
        ]),

    Food(
        name: "chess cake ",
        description: "A cake made with love from RAHUL",
        imagepath: "lib/images/desserts/cheesecake_dessert.webp",
        price: 0.99,
        category: Foodcategory.desserts,
        availableAddons: [
          Addon(name: "extra ice", price: 0.12),
          Addon(name: "extra sugar", price: 0.12),
          Addon(name: "extra cup", price: 0.12),
        ]),

    Food(
        name: "Ice_creams ",
        description: "A icecreme made with love from RAHUL",
        imagepath: "lib/images/desserts/icecrems_dessert.webp",
        price: 0.99,
        category: Foodcategory.desserts,
        availableAddons: [
          Addon(name: "extra ice", price: 0.12),
          Addon(name: "extra sugar", price: 0.12),
          Addon(name: "extra cup", price: 0.12),
        ]),

    Food(
        name: "lemonepie ",
        description: "A drink made with love from RAHUL",
        imagepath: "lib/images/desserts/lemonpie_dessert.webp",
        price: 0.99,
        category: Foodcategory.desserts,
        availableAddons: [
          Addon(name: "extra ice", price: 0.12),
          Addon(name: "extra sugar", price: 0.12),
          Addon(name: "extra cup", price: 0.12),
        ]),

    Food(
        name: "milk_cake ",
        description: "A cake made with love from RAHUL",
        imagepath: "lib/images/desserts/milk_dessert.webp",
        price: 0.99,
        category: Foodcategory.desserts,
        availableAddons: [
          Addon(name: "extra ice", price: 0.12),
          Addon(name: "extra sugar", price: 0.12),
          Addon(name: "extra cup", price: 0.12),
        ]),

    //drinks
    Food(
        name: "cocktail ",
        description: "A drink made with love from RAHUL",
        imagepath: "lib/images/desserts/cocktail_drinks.webp",
        price: 0.99,
        category: Foodcategory.drinks,
        availableAddons: [
          Addon(name: "extra sugar", price: 0.12),
          Addon(name: "extra ice", price: 0.12),
          Addon(name: "extra cup", price: 0.12),
        ]),

    Food(
        name: "lemone juice ",
        description: "A drink made with love from RAHUL",
        imagepath: "lib/images/desserts/lemone_drinks.webp",
        price: 0.99,
        category: Foodcategory.drinks,
        availableAddons: [
          Addon(name: "extra sugar", price: 0.12),
          Addon(name: "extra ice", price: 0.12),
          Addon(name: "extra cup", price: 0.12),
        ]),

    Food(
        name: "orange juice ",
        description: "A drink made with love from RAHUL",
        imagepath: "lib/images/desserts/orange_drink.webp",
        price: 0.99,
        category: Foodcategory.drinks,
        availableAddons: [
          Addon(name: "extra sugar", price: 0.12),
          Addon(name: "extra ice", price: 0.12),
          Addon(name: "extra cup", price: 0.12),
        ]),

    Food(
        name: "oreo shake ",
        description: "A shake made with love from RAHUL",
        imagepath: "lib/images/desserts/oreo_drink.webp",
        price: 0.99,
        category: Foodcategory.drinks,
        availableAddons: [
          Addon(name: "extra sugar", price: 0.12),
          Addon(name: "extra ice", price: 0.12),
          Addon(name: "extra cup", price: 0.12),
        ]),

    Food(
        name: "sweet violet ",
        description: "A drink made with love from RAHUL",
        imagepath: "lib/images/desserts/sweetviolet_drinks.webp",
        price: 0.99,
        category: Foodcategory.drinks,
        availableAddons: [
          Addon(name: "extra sugar", price: 0.12),
          Addon(name: "extra ice", price: 0.12),
          Addon(name: "extra cup", price: 0.12),
        ]),

    //salads

    Food(
        name: "Fruit Salad ",
        description: "A salad made with love from RAHUL",
        imagepath: "lib/images/desserts/fruit_salad.webp",
        price: 0.99,
        category: Foodcategory.salads,
        availableAddons: [
          Addon(name: "extra sugar", price: 0.12),
          Addon(name: "extra toppings", price: 0.12),
          Addon(name: "extra spoon", price: 0.12),
        ]),

    Food(
        name: "Garden Salad ",
        description: "A salad made with love from RAHUL",
        imagepath: "lib/images/desserts/garden_salad.webp",
        price: 0.99,
        category: Foodcategory.salads,
        availableAddons: [
          Addon(name: "extra sugar", price: 0.12),
          Addon(name: "extra toppings", price: 0.12),
          Addon(name: "extra spoon", price: 0.12),
        ]),

    Food(
        name: "healthy Salad ",
        description: "A salad made with love from RAHUL",
        imagepath: "lib/images/desserts/healthy_salad.webp",
        price: 0.99,
        category: Foodcategory.salads,
        availableAddons: [
          Addon(name: "extra sugar", price: 0.12),
          Addon(name: "extra toppings", price: 0.12),
          Addon(name: "extra spoon", price: 0.12),
        ]),

    Food(
        name: "mixed Salad ",
        description: "A salad made with love from RAHUL",
        imagepath: "lib/images/desserts/mixed_salad.webp",
        price: 0.99,
        category: Foodcategory.salads,
        availableAddons: [
          Addon(name: "extra sugar", price: 0.12),
          Addon(name: "extra toppings", price: 0.12),
          Addon(name: "extra spoon", price: 0.12),
        ]),

    Food(
        name: "Vegi Salad ",
        description: "A salad made with love from RAHUL",
        imagepath: "lib/images/desserts/vegi_salad.webp",
        price: 0.99,
        category: Foodcategory.salads,
        availableAddons: [
          Addon(name: "extra sugar", price: 0.12),
          Addon(name: "extra toppings", price: 0.12),
          Addon(name: "extra spoon", price: 0.12),
        ]),

    //sides

    Food(
        name: "Dragon Chicken ",
        description: "A side-dish made with love from RAHUL",
        imagepath: "lib/images/desserts/dragon_side.webp",
        price: 0.99,
        category: Foodcategory.sides,
        availableAddons: [
          Addon(name: "extra hot", price: 0.12),
          Addon(name: "extra toppings", price: 0.12),
          Addon(name: "extra sause", price: 0.12),
        ]),

    Food(
        name: "Fish Fries ",
        description: "A side-dish made with love from RAHUL",
        imagepath: "lib/images/desserts/fish_side.webp",
        price: 0.99,
        category: Foodcategory.sides,
        availableAddons: [
          Addon(name: "extra hot", price: 0.12),
          Addon(name: "extra toppings", price: 0.12),
          Addon(name: "extra sause", price: 0.12),
        ]),

    Food(
        name: "Fried Chicken ",
        description: "A side-dish made with love from RAHUL",
        imagepath: "lib/images/desserts/fried_side.webp",
        price: 0.99,
        category: Foodcategory.sides,
        availableAddons: [
          Addon(name: "extra hot", price: 0.12),
          Addon(name: "extra toppings", price: 0.12),
          Addon(name: "extra sause", price: 0.12),
        ]),

    Food(
        name: "Japan Chicken ",
        description: "A side-dish made with love from RAHUL",
        imagepath: "lib/images/desserts/japan_side.webp",
        price: 0.99,
        category: Foodcategory.sides,
        availableAddons: [
          Addon(name: "extra hot", price: 0.12),
          Addon(name: "extra toppings", price: 0.12),
          Addon(name: "extra sause", price: 0.12),
        ]),

    Food(
        name: "Turky Chicken ",
        description: "A side-dish made with love from RAHUL",
        imagepath: "lib/images/desserts/turky_side.webp",
        price: 0.99,
        category: Foodcategory.sides,
        availableAddons: [
          Addon(name: "extra hot", price: 0.12),
          Addon(name: "extra toppings", price: 0.12),
          Addon(name: "extra sause", price: 0.12),
        ]),
  ];

  // getters
  List<Food> get menu => _menu;

  //operations

  //add to cart

  //remove from cart

//get tot price

// get tot no items

//cler cart

  //helps

  //gen recipt

  // format double value into money

  // formate list of addons into a stringv summary
}
