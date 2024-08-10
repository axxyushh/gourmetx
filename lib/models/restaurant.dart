import 'package:flutter/material.dart';
import 'food.dart';
import 'cart_item.dart';
import 'package:collection/collection.dart';
import 'package:intl/intl.dart';
import 'package:gourmetx/components/current_location.dart';

class Restaurant extends ChangeNotifier{

  //List of Food Menu
  final List<Food> _menu = [

    //American

      //Pizzas

      //Cheese Pizza
      //Right here


    Food(
        name: "Margherita Pizza",
        description: "Traditional Italian pizza topped with tomato sauce, fresh mozzarella cheese, basil leaves, and drizzled with olive oil.",
        imagePath: "assets/images/american/margaritaPizza.jpg",
        price: 12.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Pepperoni", price: 1.99),
          Addon(name: "Italian Sausage", price: 1.50),
          Addon(name: "Mushrooms", price: 1.00),
          Addon(name: "Black Olives", price: 1.00),
          Addon(name: "Spinach", price: 1.00)
        ]
    ),//Margherita Pizza
    Food(
        name: "Pepperoni Pizza",
        description: "A classic pizza topped with tomato sauce, mozzarella cheese, and slices of spicy pepperoni.",
        imagePath: "assets/images/american/pepPizza.jpg",
        price: 12.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 1.00),
          Addon(name: "Green Peppers", price: 0.75),
          Addon(name: "Mushrooms", price: 0.75),
          Addon(name: "Onions", price: 0.50),
          Addon(name: "Black Olives", price: 0.50)
        ]
    ),//Pepperoni Pizza
    Food(
        name: "Pizza Quattro Stagioni",
        description: "A traditional Italian pizza divided into four sections representing the four seasons, typically topped with mushrooms, artichokes, olives, and prosciutto.",
        imagePath: "assets/images/american/quattroStagioniPizza.jpg",
        price: 14.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 1.00),
          Addon(name: "Basil Pesto Drizzle", price: 0.75),
          Addon(name: "Sun-dried Tomatoes", price: 0.75),
          Addon(name: "Parmesan Shavings", price: 0.50),
          Addon(name: "Rocket Leaves", price: 0.50)
        ]
    ),//Quattro Stagioni Pizza
    Food(
        name: "Marinara Pizza",
        description: "A traditional Italian pizza topped with tomato sauce, garlic, oregano, and olive oil, known for its simplicity and robust flavors.",
        imagePath: "assets/images/american/marinaraPizza.jpg",
        price: 11.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Extra Garlic", price: 0.50),
          Addon(name: "Chili Flakes", price: 0.25),
          Addon(name: "Basil Leaves", price: 0.50),
          Addon(name: "Parmesan Shavings", price: 0.50),
          Addon(name: "Arugula", price: 0.75)
        ]
    ),//Marinara Pizza
    Food(
        name: "Chicago Deep Dish Pizza",
        description: "A thick, hearty pizza with a deep crust filled with tomato sauce, cheese, and various toppings, baked in a deep dish pan.",
        imagePath: "assets/images/american/chicagoDeepDishPizza.jpg",
        price: 15.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Italian Sausage", price: 1.50),
          Addon(name: "Green Peppers", price: 0.75),
          Addon(name: "Onions", price: 0.75),
          Addon(name: "Mushrooms", price: 0.75),
          Addon(name: "Black Olives", price: 0.50)
        ]
    ),//Chicago Deep Dish Pizza
    Food(
        name: "Detroit Style Pizza",
        description: "A rectangular pizza with a thick, crispy crust, topped with tomato sauce, cheese, and pepperoni, baked in a deep dish pan.",
        imagePath: "assets/images/american/detroitPizza.jpg",
        price: 14.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 1.00),
          Addon(name: "Green Peppers", price: 0.75),
          Addon(name: "Onions", price: 0.75),
          Addon(name: "Mushrooms", price: 0.75),
          Addon(name: "Jalapenos", price: 0.50)
        ]
    ),//Detroit Style Pizza
    Food(
        name: "California Pizza",
        description: "A fresh and innovative pizza topped with a variety of unique ingredients such as avocado, sun-dried tomatoes, and goat cheese.",
        imagePath: "assets/images/american/caliPizza.jpg",
        price: 13.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Extra Avocado", price: 1.00),
          Addon(name: "Sun-dried Tomatoes", price: 0.75),
          Addon(name: "Goat Cheese", price: 1.00),
          Addon(name: "Basil Pesto Drizzle", price: 0.75),
          Addon(name: "Red Onion", price: 0.50)
        ]
    ),//California Pizza
    Food(
        name: "Siciliana Pizza",
        description: "A thick-crust pizza with a rich tomato sauce, mozzarella cheese, anchovies, and capers, inspired by traditional Sicilian flavors.",
        imagePath: "assets/images/american/sicilianaPizza.jpg",
        price: 14.49,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 1.00),
          Addon(name: "Black Olives", price: 0.75),
          Addon(name: "Red Onions", price: 0.75),
          Addon(name: "Cherry Tomatoes", price: 0.75),
          Addon(name: "Fresh Basil", price: 0.50)
        ]
    ),//Siciliana Pizza



    Food(
        name: "Paneer Pizza",
        description: "A fusion pizza topped with paneer (Indian cottage cheese), bell peppers, onions, tomatoes, and a blend of Indian spices.",
        imagePath: "assets/images/american/paneerPizza.jpg",
        price: 13.49,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 1.00),
          Addon(name: "Jalapenos", price: 0.75),
          Addon(name: "Paneer Tikka Masala Sauce", price: 0.75),
          Addon(name: "Cilantro", price: 0.50),
          Addon(name: "Red Onion", price: 0.50)
        ]
    ),//Paneer Pizza





    Food(
        name: "Margherita Pizza Slice",
        description: "A slice of traditional Italian pizza topped with tomato sauce, fresh mozzarella cheese, basil leaves, and drizzled with olive oil.",
        imagePath: "assets/images/american/margaritaPizzaSlice.jpg",
        price: 3.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Pepperoni", price: 0.75),
          Addon(name: "Italian Sausage", price: 0.75),
          Addon(name: "Mushrooms", price: 0.50),
          Addon(name: "Black Olives", price: 0.50),
          Addon(name: "Spinach", price: 0.50)
        ]
    ),//Margherita Pizza Slice
    Food(
        name: "NYC Special Pizza Slice",
        description: "A classic New York-style pizza slice topped with tomato sauce, mozzarella cheese, pepperoni, mushrooms, and green peppers.",
        imagePath: "assets/images/american/nycPizzaSlice.jpg",
        price: 3.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 0.75),
          Addon(name: "Basil Leaves", price: 0.50),
          Addon(name: "Garlic Powder", price: 0.25),
          Addon(name: "Oregano", price: 0.25),
          Addon(name: "Red Pepper Flakes", price: 0.25)
        ]
    ),//NYC Special Pizza Slice




    //Burgers
    Food(
        name: "Veg Burger",
        description: "A vegetarian burger made with a plant-based patty, lettuce, tomato, onion, and special sauce, served on a sesame seed bun.",
        imagePath: "assets/images/american/vegBurger.jpg",
        price: 4.49,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Cheese Slice", price: 0.50),
          Addon(name: "Bacon Strips", price: 1.00),
          Addon(name: "Avocado Slice", price: 0.75),
          Addon(name: "Onion Rings", price: 0.75),
          Addon(name: "Extra Sauce", price: 0.25)
        ]
    ),//Veg Burger
    Food(
        name: "Veg Double Patty Burger",
        description: "A hearty vegetarian burger with two plant-based patties, lettuce, tomato, onion, cheese, and special sauce, served on a sesame seed bun.",
        imagePath: "assets/images/american/vegDoublePattyBurger.jpg",
        price: 5.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Bacon Strips", price: 1.00),
          Addon(name: "Avocado Slice", price: 0.75),
          Addon(name: "Onion Rings", price: 0.75),
          Addon(name: "Extra Cheese", price: 0.50),
          Addon(name: "Extra Sauce", price: 0.25)
        ]
    ),//Veg Double Patty Burger
    Food(
        name: "Double Patty Chicken Burger",
        description: "Discover our Double Patty Chicken Burger: two grilled chicken patties with melted cheese, lettuce, tomato, and savory sauce, all in a toasted bun.",
        imagePath: "assets/images/american/doublePattyChickenBurger.jpg",
        price: 9.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 0.99),
          Addon(name: "Mayonaise", price: 1.99),
          Addon(name: "Patty", price: 2.99),
        ],
    ),//Double Patty Chicken Burger

      //Extras
    Food(
        name: "French Fries",
        description: "Crispy golden fries made from fresh potatoes, lightly salted for the perfect savory snack.",
        imagePath: "assets/images/american/frenchFries.jpg",
        price: 3.49,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Cheese Sauce", price: 0.99),
          Addon(name: "Bacon Bits", price: 1.50),
          Addon(name: "Garlic Aioli", price: 0.75),
          Addon(name: "Truffle Oil", price: 1.99),
          Addon(name: "Buffalo Sauce", price: 0.50)
        ]
    ),//French Fries
    Food(
        name: "Peri Peri Fries",
        description: "Crispy French fries seasoned with a spicy and tangy peri peri spice mix, offering a flavorful twist to the classic fries.",
        imagePath: "assets/images/american/periFries.jpg",
        price: 3.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Cheese Sauce", price: 1.00),
          Addon(name: "Garlic Aioli", price: 0.75),
          Addon(name: "Jalapenos", price: 0.50),
          Addon(name: "Extra Peri Peri Seasoning", price: 0.25),
          Addon(name: "Chili Flakes", price: 0.25)
        ]
    ),//Peri Peri Fries
    Food(
        name: "Cheese Fries",
        description: "Golden, crispy fries topped with a generous layer of melted cheese, creating a delicious and savory snack or side dish.",
        imagePath: "assets/images/american/cheeseFries.jpg",
        price: 4.49,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Bacon Bits", price: 1.00),
          Addon(name: "Jalapenos", price: 0.50),
          Addon(name: "Ranch Dressing", price: 0.75),
          Addon(name: "Chili", price: 1.50),
          Addon(name: "Green Onions", price: 0.50)
        ]
    ),
    Food(
        name: "Chicken Nuggets with Fries",
        description: "Crispy breaded chicken nuggets served with golden French fries, a classic American fast food favorite.",
        imagePath: "assets/images/american/nuggetsAndFries.jpg",
        price: 5.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Ketchup", price: 0.00),
          Addon(name: "Barbecue Sauce", price: 0.25),
          Addon(name: "Honey Mustard", price: 0.25),
          Addon(name: "Ranch Dressing", price: 0.50),
          Addon(name: "Cheese Dip", price: 0.75)
        ]
    ),//Chicken Nuggets with fries
    Food(
        name: "Hot Dog",
        description: "Grilled sausage served in a soft bun, topped with mustard, ketchup, and chopped onions.",
        imagePath: "assets/images/american/hotDog.jpg",
        price: 4.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Cheese", price: 0.99),
          Addon(name: "Chili", price: 1.50),
          Addon(name: "Relish", price: 0.75),
          Addon(name: "Sauerkraut", price: 0.75),
          Addon(name: "Bacon Bits", price: 1.25)
        ]
    ),//Hot Dog
    Food(
        name: "Nachos",
        description: "Crispy tortilla chips layered with melted cheese, topped with jalapeños, diced tomatoes, sour cream, and guacamole.",
        imagePath: "assets/images/american/nachos.jpg",
        price: 8.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Grilled Chicken", price: 2.50),
          Addon(name: "Beef Chili", price: 2.00),
          Addon(name: "Black Beans", price: 1.50),
          Addon(name: "Extra Cheese", price: 1.00),
          Addon(name: "Pico de Gallo", price: 1.00)
        ]
    ),//Nachos
    Food(
        name: "Cheese Garlic Bread",
        description: "A delicious appetizer featuring slices of bread topped with garlic butter and melted cheese, often served with marinara sauce for dipping.",
        imagePath: "assets/images/american/cheeseGarlicBread.jpg",
        price: 5.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 1.00),
          Addon(name: "Mixed Herbs", price: 0.50),
          Addon(name: "Jalapenos", price: 0.75),
          Addon(name: "Extra Garlic Butter", price: 0.50),
          Addon(name: "Tomato Slices", price: 0.50)
        ]
    ),//Cheese Garlic bread
    Food(
        name: "Shawarma",
        description: "A Middle Eastern dish featuring thinly sliced marinated meat, typically beef or chicken, wrapped in a flatbread with fresh vegetables and flavorful sauces.",
        imagePath: "assets/images/american/shawarma.jpg",
        price: 7.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Extra Meat", price: 2.00),
          Addon(name: "Garlic Sauce", price: 0.75),
          Addon(name: "Tahini Sauce", price: 0.75),
          Addon(name: "Pickles", price: 0.50),
          Addon(name: "Hummus", price: 1.00)
        ]
    ),//Shawarma
    Food(
        name: "Burrito",
        description: "A Mexican dish consisting of a flour tortilla filled with a variety of ingredients such as rice, beans, meat, cheese, and vegetables, wrapped tightly for a convenient and delicious meal.",
        imagePath: "assets/images/american/burito.jpg",
        price: 6.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Guacamole", price: 1.00),
          Addon(name: "Sour Cream", price: 0.75),
          Addon(name: "Extra Cheese", price: 0.50),
          Addon(name: "Pico de Gallo", price: 0.50),
          Addon(name: "Jalapenos", price: 0.50)
        ]
    ),//Burrito
    Food(
        name: "Burrito Bowl",
        description: "A deconstructed version of a burrito served in a bowl, featuring layers of rice, beans, meat, cheese, and fresh vegetables, topped with salsa and other flavorful condiments.",
        imagePath: "assets/images/american/burritoBowl.jpg",
        price: 8.49,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Guacamole", price: 1.00),
          Addon(name: "Sour Cream", price: 0.75),
          Addon(name: "Extra Cheese", price: 0.50),
          Addon(name: "Pico de Gallo", price: 0.50),
          Addon(name: "Jalapenos", price: 0.50)
        ]
    ),
    Food(
        name: "Ramen",
        description: "Traditional Japanese noodle soup with flavorful broth, tender chashu pork, soft-boiled egg, bamboo shoots, and seaweed.",
        imagePath: "assets/images/american/ramen.jpg",
        price: 11.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Extra Chashu Pork", price: 2.50),
          Addon(name: "Ajitsuke Tamago (Marinated Egg)", price: 1.50),
          Addon(name: "Corn", price: 1.00),
          Addon(name: "Spinach", price: 0.75),
          Addon(name: "Extra Noodles", price: 1.50)
        ]
    ),//Ramen



    //Desserts
    Food(
      name: "Cheese Cake",
      description: "Creamy and decadent New York-style cheesecake with a buttery graham cracker crust, topped with a choice of fresh strawberries, blueberries, or caramel sauce.",
      imagePath: "assets/images/american/cheeseCake.jpg",
      price: 6.99,
      category: FoodCategory.american,
      availableAddons: [],
    ),//Cheese Cake
    Food(
        name: "Cupcake",
        description: "A small, individual cake typically frosted and decorated, perfect for a sweet treat.",
        imagePath: "assets/images/american/cupcake.jpg",
        price: 2.49,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Frosting", price: 0.50),
          Addon(name: "Sprinkles", price: 0.25),
          Addon(name: "Chocolate Chips", price: 0.25),
          Addon(name: "Fruit Jam Filling", price: 0.75),
          Addon(name: "Whipped Cream", price: 0.50)
        ]
    ),//Cup Cake
    Food(
        name: "Churros",
        description: "Delicious fried dough pastry dusted with cinnamon sugar, crispy on the outside and soft on the inside.",
        imagePath: "assets/images/american/churos.jpg",
        price: 4.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Chocolate Sauce", price: 0.99),
          Addon(name: "Caramel Sauce", price: 0.99),
          Addon(name: "Vanilla Ice Cream", price: 1.50)
        ]
    ),//Churros
    Food(
        name: "Bread Jam",
        description: "A simple and quick snack made by spreading sweet fruit jam on slices of bread, perfect for a light breakfast or a sweet treat.",
        imagePath: "assets/images/american/breadJam.jpg",
        price: 2.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Butter", price: 0.50),
          Addon(name: "Peanut Butter", price: 0.75),
          Addon(name: "Extra Jam", price: 0.50),
          Addon(name: "Sliced Bananas", price: 0.50),
          Addon(name: "Chia Seeds", price: 0.25)
        ]
    ),//Bread Jam
    Food(
        name: "Donuts",
        description: "Soft and fluffy fried dough rings, glazed with a variety of flavors like chocolate, vanilla, or strawberry.",
        imagePath: "assets/images/american/donuts.jpg",
        price: 2.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Sprinkles", price: 0.50),
          Addon(name: "Chocolate Chips", price: 0.75),
          Addon(name: "Fruit Filling", price: 1.00)
        ]
    ),//Donuts
    Food(
        name: "Apple Pie",
        description: "A classic American dessert made with a flaky pastry crust filled with spiced apples, baked until golden brown.",
        imagePath: "assets/images/american/applePie.jpg",
        price: 3.99,
        category: FoodCategory.american,
        availableAddons: [
          Addon(name: "Vanilla Ice Cream", price: 1.00),
          Addon(name: "Whipped Cream", price: 0.50),
          Addon(name: "Caramel Drizzle", price: 0.50),
          Addon(name: "Cinnamon Powder", price: 0.25),
          Addon(name: "Nutmeg Sprinkle", price: 0.25)
        ]
    ),//Apple Pie
    Food(
        name: "Captain Cake",
        description: "A delicious and moist cake named for its rich, flavorful ingredients and delightful taste, perfect for any celebration or dessert craving.",
        imagePath: "assets/images/american/captainCake.jpg",
        price: 5.99,
        category: FoodCategory.american,
        availableAddons: []
    ),//Captain America Cake
    Food(
        name: "Iron Cake",
        description: "A robust and flavorful cake named for its strong taste and sturdy texture, perfect for those who enjoy a rich dessert experience.",
        imagePath: "assets/images/american/ironCake.jpg",
        price: 7.99,
        category: FoodCategory.american,
        availableAddons: []
    ),//Iron Man cake
    Food(
        name: "Thor Cake",
        description: "A mighty cake inspired by the powerful Thor, featuring layers of decadent flavors and adorned with thunderous decorations fit for any heroic celebration.",
        imagePath: "assets/images/american/thorCake.jpg",
        price: 8.99,
        category: FoodCategory.american,
        availableAddons: []
    ),//Thor Cake
    Food(
        name: "Spiderman Cake",
        description: "A cake inspired by the iconic Spiderman, featuring layers of delicious cake and vibrant frosting, adorned with web-like decorations and a heroic design.",
        imagePath: "assets/images/american/spidermanCake.jpg",
        price: 9.99,
        category: FoodCategory.american,
        availableAddons: []
    ),//Spiderman Cake
    Food(
        name: "Avengers Cake",
        description: "A themed cake inspired by the Avengers, featuring layers of moist cake and creamy frosting, decorated with iconic symbols and colors.",
        imagePath: "assets/images/american/avengersCake.jpg",
        price: 6.99,
        category: FoodCategory.american,
        availableAddons: []
    ),//Avengers Cake



    //Drinks

    Food(
        name: "Coke",
        description: "Refreshing carbonated beverage with a crisp and bubbly taste.",
        imagePath: "assets/images/drinks/coke.jpg",
        price: 1.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Ice", price: 0.00),
          Addon(name: "Lemon Slice", price: 0.25),
          Addon(name: "Vanilla Syrup", price: 0.50),
          Addon(name: "Cherry Flavor", price: 0.50),
          Addon(name: "Extra Fizz", price: 0.75)
        ]
    ),//Coke
    Food(
        name: "Fanta",
        description: "Refreshing carbonated orange-flavored soda, known for its fruity and vibrant taste.",
        imagePath: "assets/images/drinks/fanta.jpg",
        price: 2.49,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Ice", price: 0.00),
          Addon(name: "Lemon Slice", price: 0.25),
          Addon(name: "Strawberry Syrup", price: 0.50),
          Addon(name: "Pineapple Flavor", price: 0.50),
          Addon(name: "Extra Fizz", price: 0.75)
        ]
    ),//Fanta
    Food(
        name: "Sprite",
        description: "Refreshing lemon-lime flavored soda, known for its crisp and clean taste.",
        imagePath: "assets/images/drinks/sprite.jpg",
        price: 2.29,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Ice", price: 0.00),
          Addon(name: "Lemon Slice", price: 0.25),
          Addon(name: "Cherry Syrup", price: 0.50),
          Addon(name: "Orange Flavor", price: 0.50),
          Addon(name: "Extra Fizz", price: 0.75)
        ]
    ),//Sprite


    Food(
        name: "Orange Juice",
        description: "Freshly squeezed orange juice, packed with vitamins and a refreshing citrus taste.",
        imagePath: "assets/images/drinks/orangeJuice.jpg",
        price: 3.49,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Ice", price: 0.00),
          Addon(name: "Ginger Syrup", price: 0.50),
          Addon(name: "Mint Leaves", price: 0.50),
          Addon(name: "Pineapple Juice", price: 0.75),
          Addon(name: "Sparkling Water", price: 1.00)
        ]
    ),//Orange Juice
    Food(
        name: "Apple Juice",
        description: "A classic and refreshing juice made from freshly pressed apples, perfect for any time of the day.",
        imagePath: "assets/images/drinks/appleJuice.jpg",
        price: 1.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Ice", price: 0.00),
          Addon(name: "Cinnamon Stick", price: 0.50),
          Addon(name: "Lemon Slice", price: 0.25),
          Addon(name: "Ginger Syrup", price: 0.50),
          Addon(name: "Mint Leaves", price: 0.50)
        ]
    ),//Apple Juice
    Food(
        name: "Watermelon Juice",
        description: "A refreshing juice made from ripe watermelons, known for its sweet and hydrating qualities.",
        imagePath: "assets/images/drinks/watermelonJuice.jpg",
        price: 2.49,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Ice", price: 0.00),
          Addon(name: "Mint Leaves", price: 0.25),
          Addon(name: "Lime Wedge", price: 0.25),
          Addon(name: "Ginger Syrup", price: 0.50),
          Addon(name: "Agave Nectar", price: 0.50)
        ]
    ),//Watermelon Juice
    Food(
        name: "Pomegranate Juice",
        description: "A vibrant and antioxidant-rich juice made from fresh pomegranate seeds, known for its tart and sweet flavor.",
        imagePath: "assets/images/drinks/pomegranateJuice.jpg",
        price: 2.79,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Ice", price: 0.00),
          Addon(name: "Orange Slice", price: 0.25),
          Addon(name: "Honey Drizzle", price: 0.50),
          Addon(name: "Ginger Syrup", price: 0.50),
          Addon(name: "Mint Leaves", price: 0.50)
        ]
    ),//Pomegranate Juice
    Food(
        name: "Mango Juice",
        description: "A delightful and tropical juice made from ripe mangoes, known for its sweet and fruity flavor.",
        imagePath: "assets/images/drinks/mangoJuice.jpg",
        price: 2.49,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Ice", price: 0.00),
          Addon(name: "Lime Wedge", price: 0.25),
          Addon(name: "Ginger Syrup", price: 0.50),
          Addon(name: "Mint Leaves", price: 0.50),
          Addon(name: "Agave Nectar", price: 0.50)
        ]
    ),//Mango Juice
    Food(
        name: "Falooda",
        description: "A popular Indian dessert beverage made with milk, rose syrup, vermicelli, basil seeds, and topped with ice cream and nuts.",
        imagePath: "assets/images/drinks/falooda.jpg",
        price: 4.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Ice Cream", price: 1.00),
          Addon(name: "Mixed Nuts", price: 0.75),
          Addon(name: "Basil Seeds", price: 0.50),
          Addon(name: "Rose Syrup", price: 0.50),
          Addon(name: "Verimicelli", price: 0.50)
        ]
    ),//Falooda
    Food(
        name: "Thandai",
        description: "A traditional Indian cold drink made with a blend of milk, nuts, and spices, flavored with rose water and often enjoyed during festivals.",
        imagePath: "assets/images/drinks/thandai.jpg",
        price: 3.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra Almonds", price: 0.75),
          Addon(name: "Saffron", price: 1.00),
          Addon(name: "Rose Petals", price: 0.50),
          Addon(name: "Cardamom", price: 0.25),
          Addon(name: "Extra Sweetener", price: 0.50)
        ]
    ),//Thandai
    Food(
        name: "Aam Panna",
        description: "A refreshing summer drink made from raw mangoes, flavored with roasted cumin, mint, and black salt.",
        imagePath: "assets/images/drinks/aamPanna.jpg",
        price: 2.79,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Ice", price: 0.00),
          Addon(name: "Mint Leaves", price: 0.25),
          Addon(name: "Roasted Cumin Powder", price: 0.50),
          Addon(name: "Black Salt", price: 0.25),
          Addon(name: "Sugar Syrup", price: 0.50)
        ]
    ),//Aam Panna
    Food(
        name: "Lemonade",
        description: "A classic and refreshing beverage made from freshly squeezed lemon juice, water, and sugar, served over ice.",
        imagePath: "assets/images/drinks/lemonade.jpg",
        price: 2.49,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Ice", price: 0.00),
          Addon(name: "Mint Leaves", price: 0.25),
          Addon(name: "Lemon Slice", price: 0.25),
          Addon(name: "Lime Wedge", price: 0.25),
          Addon(name: "Sugar Syrup", price: 0.50)
        ]
    ),//Lemonade





    Food(
        name: "Strawberry Banana Smoothie",
        description: "A creamy and delicious blend of fresh strawberries, ripe bananas, and yogurt, served chilled.",
        imagePath: "assets/images/drinks/strawberryBananaSmoothie.jpg",
        price: 3.49,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Ice", price: 0.00),
          Addon(name: "Protein Powder", price: 1.00),
          Addon(name: "Honey Drizzle", price: 0.50),
          Addon(name: "Oatmeal", price: 0.75),
          Addon(name: "Chia Seeds", price: 0.50)
        ]
    ),//Strawberry Banana Smoothie
    Food(
        name: "Chocolate Milkshake",
        description: "A creamy and indulgent shake made with milk and chocolate syrup or cocoa powder, topped with whipped cream.",
        imagePath: "assets/images/drinks/chocolateMilkshake.jpg",
        price: 3.29,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Whipped Cream", price: 0.50),
          Addon(name: "Chocolate Chips", price: 0.75),
          Addon(name: "Vanilla Ice Cream", price: 1.00),
          Addon(name: "Caramel Drizzle", price: 0.50),
          Addon(name: "Hazelnut Syrup", price: 0.50)
        ]
    ),//Chocolate Milkshake




    Food(
        name: "Pina Colada",
        description: "A tropical cocktail made with rum, coconut cream, and pineapple juice, served blended or shaken with ice.",
        imagePath: "assets/images/drinks/pinaColada.jpg",
        price: 3.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Ice", price: 0.00),
          Addon(name: "Pineapple Slice", price: 0.50),
          Addon(name: "Extra Rum", price: 1.00),
          Addon(name: "Coconut Shavings", price: 0.75),
          Addon(name: "Cherry Garnish", price: 0.50)
        ]
    ),//Pina Colada
    Food(
        name: "Coconut Punch",
        description: "A refreshing beverage made with coconut milk, pineapple juice, and a hint of lime, served chilled.",
        imagePath: "assets/images/drinks/coconutPunch.jpeg",
        price: 2.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Ice", price: 0.00),
          Addon(name: "Lime Slice", price: 0.25),
          Addon(name: "Mint Leaves", price: 0.50),
          Addon(name: "Pineapple Chunks", price: 0.75),
          Addon(name: "Coconut Shavings", price: 0.75)
        ]
    ),//Coconut Punch
    Food(
        name: "Lassi",
        description: "A traditional Indian yogurt-based drink, typically flavored with mango, rose, or plain, known for its creamy texture and refreshing taste.",
        imagePath: "assets/images/drinks/lassi.jpg",
        price: 2.49,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Ice", price: 0.00),
          Addon(name: "Mango Pulp", price: 0.50),
          Addon(name: "Rose Water", price: 0.50),
          Addon(name: "Cardamom Powder", price: 0.50),
          Addon(name: "Saffron Strands", price: 1.00)
        ]
    ),//lassi



    Food(
        name: "Oreo Shake",
        description: "Creamy milkshake blended with Oreo cookies, topped with whipped cream and cookie crumbles.",
        imagePath: "assets/images/drinks/oreoShake.jpg",
        price: 4.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Chocolate Sauce", price: 0.50),
          Addon(name: "Caramel Sauce", price: 0.50),
          Addon(name: "Vanilla Ice Cream Scoop", price: 1.00),
          Addon(name: "Extra Oreo Cookies", price: 0.75),
          Addon(name: "Chocolate Chips", price: 0.75)
        ]
    ),//Oreo Shake
    Food(
        name: "Cold Coffee",
        description: "Smooth and refreshing coffee served cold, perfect for a pick-me-up.",
        imagePath: "assets/images/drinks/coldCoffee.jpg",
        price: 3.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Whipped Cream", price: 0.50),
          Addon(name: "Chocolate Syrup", price: 0.75),
          Addon(name: "Caramel Drizzle", price: 0.75),
          Addon(name: "Vanilla Extract", price: 0.50),
          Addon(name: "Extra Shot of Espresso", price: 1.00)
        ]
    ),//Cold Coffee

    Food(
        name: "Tea",
        description: "Hot or iced tea brewed to perfection, offering a soothing and refreshing beverage.",
        imagePath: "assets/images/drinks/tea.jpg",
        price: 2.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Lemon Slice", price: 0.25),
          Addon(name: "Honey", price: 0.50),
          Addon(name: "Mint Leaves", price: 0.50),
          Addon(name: "Peach Flavor", price: 0.75),
          Addon(name: "Extra Ice", price: 0.25)
        ]
    ),//Tea
    Food(
        name: "Masala Chai",
        description: "A spiced tea beverage made by brewing black tea with a mixture of aromatic Indian spices and herbs, typically served with milk and sweetened.",
        imagePath: "assets/images/drinks/masalaChai.jpg",
        price: 2.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Milk", price: 0.25),
          Addon(name: "Sugar", price: 0.25),
          Addon(name: "Honey", price: 0.50),
          Addon(name: "Cardamom Pods", price: 0.50),
          Addon(name: "Ginger", price: 0.50)
        ]
    ),//Masala Chai
    Food(
        name: "Lemon Tea",
        description: "A soothing tea made by steeping black tea with fresh lemon juice, known for its tangy and refreshing taste.",
        imagePath: "assets/images/drinks/lemontea.jpg",
        price: 2.29,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Honey", price: 0.50),
          Addon(name: "Mint Leaves", price: 0.25),
          Addon(name: "Ginger", price: 0.50),
          Addon(name: "Cinnamon Stick", price: 0.25),
          Addon(name: "Lemon Slice", price: 0.25)
        ]
    ),//Lemon Tea
    Food(
        name: "Kashmiri Kahwa",
        description: "A traditional green tea preparation from Kashmir, flavored with spices like cardamom, cinnamon, saffron, and almonds.",
        imagePath: "assets/images/drinks/kahwa.jpg",
        price: 3.49,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Saffron Strands", price: 1.00),
          Addon(name: "Almond Flakes", price: 0.75),
          Addon(name: "Honey", price: 0.50),
          Addon(name: "Rose Water", price: 0.50),
          Addon(name: "Pistachio", price: 0.75)
        ]
    ),//Kahwa

    Food(
        name: "Filter Coffee",
        description: "A South Indian style coffee made with dark roasted coffee beans and chicory, brewed in a metal filter, and served with milk and sugar.",
        imagePath: "assets/images/drinks/filterCoffee.jpg",
        price: 2.49,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Milk", price: 0.25),
          Addon(name: "Sugar", price: 0.25),
          Addon(name: "Vanilla Extract", price: 0.50),
          Addon(name: "Cardamom Powder", price: 0.50),
          Addon(name: "Cinnamon Stick", price: 0.25)
        ]
    ),//Filter Coffee
    Food(
        name: "Espresso",
        description: "A classic and comforting beverage made from freshly brewed coffee beans, served hot.",
        imagePath: "assets/images/drinks/hotCoffee.jpg",
        price: 2.49,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Milk", price: 0.25),
          Addon(name: "Sugar", price: 0.25),
          Addon(name: "Whipped Cream", price: 0.50),
          Addon(name: "Flavored Syrup", price: 0.50),
          Addon(name: "Cinnamon Powder", price: 0.25)
        ]
    ),//Espresso
    Food(
        name: "Black Coffee",
        description: "A strong and bold beverage made from freshly brewed coffee beans without any additives, served hot.",
        imagePath: "assets/images/drinks/blackCoffee.jpg",
        price: 1.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Milk", price: 0.25),
          Addon(name: "Sugar", price: 0.25),
          Addon(name: "Whipped Cream", price: 0.50),
          Addon(name: "Flavored Syrup", price: 0.50),
          Addon(name: "Cinnamon Powder", price: 0.25)
        ]
    ),//Black Coffee
    Food(
        name: "Pumpkin Spice Latte",
        description: "A seasonal favorite made with espresso, steamed milk, pumpkin spice syrup, and topped with whipped cream and pumpkin pie spice.",
        imagePath: "assets/images/drinks/pumpkinSpiceLatte.jpg",
        price: 4.29,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Whipped Cream", price: 0.50),
          Addon(name: "Pumpkin Pie Spice", price: 0.75),
          Addon(name: "Extra Espresso Shot", price: 1.00),
          Addon(name: "Vanilla Syrup", price: 0.50),
          Addon(name: "Caramel Drizzle", price: 0.50)
        ]
    ),//Pumpkin Spice Latte
    Food(
        name: "Americano",
        description: "A coffee drink made by diluting espresso with hot water, resulting in a bold and robust flavor.",
        imagePath: "assets/images/drinks/americano.jpg",
        price: 2.79,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Milk", price: 0.25),
          Addon(name: "Sugar", price: 0.25),
          Addon(name: "Whipped Cream", price: 0.50),
          Addon(name: "Flavored Syrup", price: 0.50),
          Addon(name: "Cinnamon Powder", price: 0.25)
        ]
    ),//Americano

    Food(
        name: "Virgin Mojito",
        description: "A refreshing mocktail made with lime juice, fresh mint leaves, sugar, and soda water, served over ice.",
        imagePath: "assets/images/drinks/virginMojito.jpg",
        price: 3.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra Mint Leaves", price: 0.50),
          Addon(name: "Strawberry Syrup", price: 0.75),
          Addon(name: "Blueberry Puree", price: 1.00),
          Addon(name: "Ginger Ale", price: 1.50),
          Addon(name: "Sparkling Water", price: 0.75)
        ]
    ),//Virgin Mojito
    Food(
        name: "Shirley Temple",
        description: "A classic mocktail made with ginger ale or lemon-lime soda, grenadine syrup, and garnished with a maraschino cherry.",
        imagePath: "assets/images/drinks/shirleyTemple.jpg",
        price: 2.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra Cherry", price: 0.50),
          Addon(name: "Lemon Twist", price: 0.75),
          Addon(name: "Orange Slice", price: 0.50),
          Addon(name: "Pineapple Juice", price: 1.00),
          Addon(name: "Sprite", price: 0.75)
        ]
    ),//Shirley Temple
    Food(
        name: "Strawberry Daiquiri",
        description: "A classic cocktail made with rum, lime juice, sugar, and fresh strawberries, blended with ice for a refreshing and fruity flavor.",
        imagePath: "assets/images/drinks/strawberryDaiquiri.jpg",
        price: 5.49,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra Rum Shot", price: 2.00),
          Addon(name: "Whipped Cream", price: 0.75),
          Addon(name: "Lime Garnish", price: 0.50),
          Addon(name: "Mint Sprig", price: 0.50),
          Addon(name: "Sugar Rim", price: 0.50)
        ]
    ),//Strawberry Daiquiri
    Food(
        name: "Mango Tango",
        description: "A tropical mocktail made with fresh mango puree, orange juice, pineapple juice, and a splash of grenadine syrup for a vibrant and fruity flavor.",
        imagePath: "assets/images/drinks/mangoTango.jpg",
        price: 4.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Coconut Milk", price: 1.00),
          Addon(name: "Passion Fruit Syrup", price: 0.75),
          Addon(name: "Peach Schnapps", price: 2.00),
          Addon(name: "Ginger Ale", price: 1.50),
          Addon(name: "Mint Leaves", price: 0.50)
        ]
    ),//Mango Tango
    Food(
        name: "Blueberry Lemonade",
        description: "A refreshing lemonade infused with blueberry puree, offering a sweet and tangy twist on a classic drink.",
        imagePath: "assets/images/drinks/blueberryLemonade.jpg",
        price: 3.79,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Fresh Blueberries", price: 0.75),
          Addon(name: "Lemon Slice", price: 0.50),
          Addon(name: "Mint Leaves", price: 0.50),
          Addon(name: "Sparkling Water", price: 0.75),
          Addon(name: "Agave Syrup", price: 0.50)
        ]
    ),//Blueberry Lemonade
    Food(
        name: "Cucumber Cooler",
        description: "A refreshing drink made with cucumber juice, lime juice, mint leaves, and soda water, served over ice for a cooling and hydrating experience.",
        imagePath: "assets/images/drinks/cucumberCooler.jpg",
        price: 3.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Ginger Syrup", price: 0.75),
          Addon(name: "Lemon Twist", price: 0.50),
          Addon(name: "Honey Drizzle", price: 0.50),
          Addon(name: "Sliced Cucumber", price: 0.50),
          Addon(name: "Sparkling Water", price: 0.75)
        ]
    ),//Cucumber Cooler
    Food(
        name: "Watermelon Mint Fizz",
        description: "A refreshing mocktail made with fresh watermelon juice, mint leaves, lime juice, and soda water, served over ice for a cool and revitalizing drink.",
        imagePath: "assets/images/drinks/watermelonMintFizz.jpg",
        price: 4.49,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Watermelon Balls", price: 0.75),
          Addon(name: "Lemon Twist", price: 0.50),
          Addon(name: "Agave Syrup", price: 0.50),
          Addon(name: "Sparkling Water", price: 0.75),
          Addon(name: "Garnish Mint Sprig", price: 0.50)
        ]
    ),//Watermelon Mint Fizz
    Food(
        name: "Citrus Sunrise",
        description: "A vibrant mocktail featuring a blend of orange juice, pineapple juice, grenadine syrup, and a splash of lemon-lime soda, creating a refreshing and fruity drink.",
        imagePath: "assets/images/drinks/citrusSunrise.jpg",
        price: 4.29,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Orange Slice", price: 0.50),
          Addon(name: "Maraschino Cherry", price: 0.75),
          Addon(name: "Ginger Ale", price: 0.50),
          Addon(name: "Sliced Lemon", price: 0.50),
          Addon(name: "Sugar Rim", price: 0.50)
        ]
    ),//Citrus Sunrise
    Food(
        name: "Iced Tea Sparkler",
        description: "A refreshing blend of iced tea, lemonade, and soda water, served over ice with a hint of mint for a cool and effervescent drink.",
        imagePath: "assets/images/drinks/icedTeaSparkler.jpg",
        price: 3.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Lemon Wedge", price: 0.50),
          Addon(name: "Mint Leaves", price: 0.50),
          Addon(name: "Agave Syrup", price: 0.50),
          Addon(name: "Sliced Orange", price: 0.50),
          Addon(name: "Sparkling Water", price: 0.75)
        ]
    ),//Iced Tea Sparkler





    //North Indian

    Food(
        name: "Chole Bhature",
        description: "A popular North Indian dish consisting of spicy chickpea curry (chole) served with deep-fried bread (bhature), often accompanied by pickles and onions.",
        imagePath: "assets/images/northIndian/choleBhature.jpg",
        price: 8.49,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Green Chutney", price: 0.50),
          Addon(name: "Pickle", price: 0.25),
          Addon(name: "Onion Salad", price: 0.50),
          Addon(name: "Lassi", price: 1.00),
          Addon(name: "Masala Chaas", price: 0.75)
        ]
    ),//Chole Bhature
    Food(
        name: "Chole Kulche",
        description: "A popular North Indian street food dish featuring spicy chickpea curry (chole) served with soft, leavened bread (kulcha), typically garnished with onions and green chilies.",
        imagePath: "assets/images/northIndian/choleKulche.jpg",
        price: 7.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Green Chutney", price: 0.50),
          Addon(name: "Pickle", price: 0.25),
          Addon(name: "Onion Salad", price: 0.50),
          Addon(name: "Lassi", price: 1.00),
          Addon(name: "Masala Chaas", price: 0.75)
        ]
    ),//Chole Kulche
    Food(
        name: "Poha",
        description: "A popular Indian breakfast dish made from flattened rice, sautéed with onions, potatoes, and flavored with turmeric and spices.",
        imagePath: "assets/images/northIndian/poha.jpg",
        price: 6.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Peas", price: 0.50),
          Addon(name: "Roasted Peanuts", price: 0.50),
          Addon(name: "Lemon Wedge", price: 0.25),
          Addon(name: "Sev (Indian noodles)", price: 0.75),
          Addon(name: "Green Chilies", price: 0.50)
        ]
    ),//Poha
    Food(
        name: "Samosa",
        description: "A popular Indian snack consisting of a crispy pastry filled with spiced potatoes, peas, and sometimes other fillings like lentils or minced meat.",
        imagePath: "assets/images/northIndian/samosa.jpg",
        price: 2.49,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Tamarind Chutney", price: 0.50),
          Addon(name: "Mint Chutney", price: 0.25),
          Addon(name: "Chopped Onions", price: 0.25),
          Addon(name: "Green Chilies", price: 0.50),
          Addon(name: "Chaas (Buttermilk)", price: 0.75)
        ]
    ),//Samosa
    Food(
        name: "Jalebi",
        description: "A popular Indian sweet made by deep-frying batter in pretzel or circular shapes, which are then soaked in sugar syrup.",
        imagePath: "assets/images/northIndian/jalebi.jpg",
        price: 3.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Rabri (Sweetened Condensed Milk)", price: 1.00),
          Addon(name: "Pistachio Flakes", price: 0.50),
          Addon(name: "Cardamom Powder", price: 0.25),
          Addon(name: "Saffron Strands", price: 0.75),
          Addon(name: "Silver Foil", price: 0.50)
        ]
    ),//Jalebi
    Food(
        name: "Aloo Tikki",
        description: "A popular North Indian snack made from boiled potatoes mixed with various spices, shaped into patties, and shallow-fried until crispy.",
        imagePath: "assets/images/northIndian/aloTikki.jpg",
        price: 4.49,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Tamarind Chutney", price: 0.50),
          Addon(name: "Mint Chutney", price: 0.25),
          Addon(name: "Yogurt", price: 0.50),
          Addon(name: "Chopped Onions", price: 0.25),
          Addon(name: "Green Chilies", price: 0.50)
        ]
    ),//Aloo Tikki
    Food(
        name: "Kachori with Sabzi",
        description: "A popular North Indian snack consisting of deep-fried pastries filled with spiced lentils or peas, served with a side of potato curry (sabzi).",
        imagePath: "assets/images/northIndian/kachoriSabji.jpg",
        price: 5.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Green Chutney", price: 0.50),
          Addon(name: "Tamarind Chutney", price: 0.50),
          Addon(name: "Chopped Onions", price: 0.25),
          Addon(name: "Curd (Yogurt)", price: 0.75),
          Addon(name: "Green Chilies", price: 0.50)
        ]
    ),//Kachori Sabzi
    Food(
        name: "Raj Kachori",
        description: "A large crispy puri filled with a variety of ingredients such as chickpeas, potatoes, yogurt, and chutneys, garnished with sev (Indian noodles) and spices.",
        imagePath: "assets/images/northIndian/rajKachori.jpg",
        price: 7.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Tamarind Chutney", price: 0.50),
          Addon(name: "Mint Chutney", price: 0.25),
          Addon(name: "Yogurt", price: 0.50),
          Addon(name: "Chopped Onions", price: 0.25),
          Addon(name: "Green Chilies", price: 0.50)
        ]
    ),//Raj Kachori
    Food(
        name: "Pani Puri",
        description: "A popular Indian street food snack consisting of hollow puris (crispy bread balls) filled with spicy and tangy flavored water (pani), tamarind chutney, and potato mixture.",
        imagePath: "assets/images/northIndian/paniPuri.jpg",
        price: 4.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Extra Puri", price: 0.50),
          Addon(name: "Extra Spicy Water (Pani)", price: 0.75),
          Addon(name: "Boondi", price: 0.25),
          Addon(name: "Chopped Onions", price: 0.25),
          Addon(name: "Sev (Indian noodles)", price: 0.50)
        ]
    ),//Pani Puri
    Food(
        name: "Maggi",
        description: "A popular instant noodle brand known for its quick preparation and variety of flavors, often cooked with vegetables and spices.",
        imagePath: "assets/images/northIndian/maggie.jpg",
        price: 3.49,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Mixed Vegetables", price: 0.50),
          Addon(name: "Extra Masala", price: 0.25),
          Addon(name: "Egg", price: 1.00),
          Addon(name: "Cheese", price: 0.75),
          Addon(name: "Green Chilies", price: 0.25)
        ]
    ),//Maggie
    Food(
        name: "Dabeli",
        description: "A popular street food from Gujarat, Dabeli features a spicy mashed potato filling with peanuts, pomegranate seeds, and sev (crispy chickpea noodles) in a soft bun.",
        imagePath: "assets/images/northIndian/dabeli.jpeg",
        price: 6.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Extra Sev", price: 0.50),
          Addon(name: "Extra Pomegranate Seeds", price: 0.75),
          Addon(name: "Green Chutney", price: 0.50),
          Addon(name: "Tamarind Chutney", price: 0.50),
          Addon(name: "Spicy Garlic Chutney", price: 0.75)
        ]
    ),//Dabeli
    Food(
        name: "Paratha Sabji",
        description: "A classic North Indian dish where flaky, buttery parathas are served with a spicy and flavorful mixed vegetable curry (sabji). It's often accompanied by yogurt and pickles.",
        imagePath: "assets/images/northIndian/parathaSabji.jpg",
        price: 8.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Extra Paratha", price: 1.50),
          Addon(name: "Extra Sabji", price: 2.00),
          Addon(name: "Yogurt", price: 1.00),
          Addon(name: "Pickles", price: 0.75),
          Addon(name: "Papad", price: 0.50)
        ]
    ),//Paratha Sabji
    Food(
        name: "Pav Bhaji",
        description: "A popular street food from Maharashtra, Pav Bhaji is a spicy vegetable mash served with buttered pav (bread rolls). The bhaji (mash) includes potatoes, tomatoes, peas, and spices, garnished with fresh cilantro and butter.",
        imagePath: "assets/images/northIndian/pavBhaji.jpg",
        price: 7.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Extra Pav", price: 1.00),
          Addon(name: "Extra Butter", price: 0.50),
          Addon(name: "Cheese", price: 1.50),
          Addon(name: "Onions", price: 0.50),
          Addon(name: "Lemon Wedges", price: 0.25)
        ]
    ),//Pav Bhaji
    Food(
        name: "Puri Sabji",
        description: "A traditional Indian dish consisting of deep-fried puffed bread (puri) served with a spiced potato curry (sabji). The puris are crispy on the outside and soft inside, complementing the flavorful and aromatic sabji.",
        imagePath: "assets/images/northIndian/puriSabji.jpg",
        price: 9.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Extra Puri", price: 1.25),
          Addon(name: "Extra Sabji", price: 2.50),
          Addon(name: "Raita", price: 1.00),
          Addon(name: "Pickle", price: 0.75),
          Addon(name: "Green Chutney", price: 0.50)
        ]
    ),//Puri Sabji
    Food(
        name: "Vada Pav",
        description: "A popular street food from Mumbai, Vada Pav consists of a spicy potato fritter (vada) sandwiched between pav (soft bread rolls). It is typically served with chutneys and sometimes accompanied by fried green chilies or garlic chutney.",
        imagePath: "assets/images/northIndian/vadaPav.jpeg",
        price: 5.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Extra Vada", price: 1.50),
          Addon(name: "Extra Pav", price: 1.00),
          Addon(name: "Chutney", price: 0.75),
          Addon(name: "Fried Green Chilies", price: 0.50),
          Addon(name: "Garlic Chutney", price: 0.75)
        ]
    ),//Vada Pav
    Food(
        name: "Aloo Paratha",
        description: "A North Indian stuffed flatbread made with whole wheat dough and filled with spiced mashed potatoes, typically served with butter, yogurt, or pickle.",
        imagePath: "assets/images/northIndian/alooParatha.jpg",
        price: 5.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Butter", price: 0.50),
          Addon(name: "Yogurt", price: 0.50),
          Addon(name: "Pickle", price: 0.25),
          Addon(name: "Green Chilies", price: 0.25),
          Addon(name: "Onion Salad", price: 0.50)
        ]
    ),//Aloo Paratha
    Food(
        name: "Paneer Paratha",
        description: "A North Indian stuffed flatbread made with whole wheat dough and filled with crumbled paneer (Indian cottage cheese) mixed with spices and herbs.",
        imagePath: "assets/images/northIndian/paneerParatha.jpg",
        price: 6.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Butter", price: 0.50),
          Addon(name: "Yogurt", price: 0.50),
          Addon(name: "Pickle", price: 0.25),
          Addon(name: "Green Chilies", price: 0.25),
          Addon(name: "Onion Salad", price: 0.50)
        ]
    ),//Paneer Paratha
    Food(
        name: "Salad",
        description: "A traditional Indian salad made with fresh cucumbers, tomatoes, onions, and carrots, seasoned with lemon juice, chaat masala, and cilantro.",
        imagePath: "assets/images/northIndian/IndianSalad.jpg",
        price: 3.49,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Yogurt Dressing", price: 0.75),
          Addon(name: "Roasted Cumin Powder", price: 0.50),
          Addon(name: "Pomegranate Seeds", price: 1.00),
          Addon(name: "Grilled Paneer", price: 2.00),
          Addon(name: "Papadum", price: 1.25)
        ]
    ),//Indian Salad



    Food(
        name: "Kadai Paneer",
        description: "A popular North Indian dish made with paneer (Indian cottage cheese) and bell peppers cooked in a spicy tomato gravy, seasoned with aromatic spices.",
        imagePath: "assets/images/northIndian/kadaiPaneer.jpg",
        price: 9.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Extra Paneer", price: 1.50),
          Addon(name: "Butter", price: 0.75),
          Addon(name: "Green Chilies", price: 0.50),
          Addon(name: "Coriander Leaves", price: 0.25),
          Addon(name: "Extra Gravy", price: 1.00)
        ]
    ),//Kadai Paneer
    Food(
        name: "Shahi Paneer",
        description: "A rich and creamy North Indian dish made with paneer (Indian cottage cheese) cooked in a flavorful and aromatic cashew-based gravy, garnished with cream and dried fruits.",
        imagePath: "assets/images/northIndian/shahiPaneer.jpg",
        price: 10.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Extra Paneer", price: 1.50),
          Addon(name: "Butter", price: 0.75),
          Addon(name: "Green Chilies", price: 0.50),
          Addon(name: "Coriander Leaves", price: 0.25),
          Addon(name: "Extra Gravy", price: 1.00)
        ]
    ),//Shahi Paneer
    Food(
        name: "Paneer Lababdar",
        description: "A delicious North Indian dish featuring paneer (Indian cottage cheese) cooked in a rich, creamy tomato-based gravy with a blend of aromatic spices.",
        imagePath: "assets/images/northIndian/lababPaneer.jpg",
        price: 10.49,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Extra Paneer", price: 1.50),
          Addon(name: "Butter", price: 0.75),
          Addon(name: "Green Chilies", price: 0.50),
          Addon(name: "Coriander Leaves", price: 0.25),
          Addon(name: "Extra Gravy", price: 1.00)
        ]
    ),//Paneer Lababdar
    Food(
        name: "Palak Paneer",
        description: "A healthy and flavorful North Indian dish made with paneer (Indian cottage cheese) cooked in a smooth and spiced spinach gravy.",
        imagePath: "assets/images/northIndian/palakPaneer.jpg",
        price: 9.49,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Extra Paneer", price: 1.50),
          Addon(name: "Butter", price: 0.75),
          Addon(name: "Green Chilies", price: 0.50),
          Addon(name: "Coriander Leaves", price: 0.25),
          Addon(name: "Extra Gravy", price: 1.00)
        ]
    ),//Palak Paneer
    Food(
        name: "Butter Paneer",
        description: "A creamy and flavorful North Indian dish made with paneer (Indian cottage cheese) cooked in a rich tomato-based gravy, seasoned with butter and aromatic spices.",
        imagePath: "assets/images/northIndian/butterPaneer.jpg",
        price: 11.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Extra Paneer", price: 1.50),
          Addon(name: "Butter", price: 0.75),
          Addon(name: "Green Chilies", price: 0.50),
          Addon(name: "Coriander Leaves", price: 0.25),
          Addon(name: "Extra Gravy", price: 1.00)
        ]
    ),//Butter Paneer
    Food(
        name: "Matar Mushroom",
        description: "Matar Mushroom is a North Indian curry made with green peas, mushrooms, onions, tomatoes, and a blend of aromatic spices.",
        imagePath: "assets/images/northIndian/matarMushroom.jpg",
        price: 8.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Garlic Naan", price: 1.50),
          Addon(name: "Jeera Rice", price: 2.00),
          Addon(name: "Raita", price: 1.25),
          Addon(name: "Papadum", price: 1.00),
          Addon(name: "Mint Chutney", price: 0.75)
        ]
    ),//Matar Mushroom

    Food(
        name: "Butter Chicken",
        description: "A popular North Indian dish featuring tender chicken cooked in a creamy tomato-based sauce, enriched with butter, cream, and a blend of spices.",
        imagePath: "assets/images/northIndian/butterChicken.jpg",
        price: 13.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Garlic Naan", price: 1.00),
          Addon(name: "Jeera Rice", price: 2.50),
          Addon(name: "Paneer Tikka", price: 4.50),
          Addon(name: "Dal Makhani", price: 3.50),
          Addon(name: "Raita", price: 1.25)
        ]
    ),//Butter Chicken
    Food(
        name: "Ahuna Chicken",
        description: "A traditional dish from the northeastern region of India, particularly Assam, where chicken is slow-cooked with bamboo shoots, herbs, and spices.",
        imagePath: "assets/images/northIndian/ahunaChicken.jpg",
        price: 12.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Steamed Rice", price: 2.00),
          Addon(name: "Aloo Pitika (Mashed Potatoes)", price: 3.00),
          Addon(name: "Bamboo Shoot Salad", price: 2.50),
          Addon(name: "Green Chutney", price: 0.75),
          Addon(name: "Assamese Pitha (Rice Cake)", price: 4.00)
        ]
    ),//Ahuna Chicken
    Food(
        name: "Rogan Josh",
        description: "A flavorful Kashmiri dish made with tender pieces of meat (usually lamb or goat) cooked in a rich, aromatic gravy of yogurt, garlic, and various spices.",
        imagePath: "assets/images/northIndian/roganJosh.jpg",
        price: 14.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Steamed Basmati Rice", price: 2.50),
          Addon(name: "Mixed Vegetable Curry", price: 3.50),
          Addon(name: "Raita", price: 1.25)
        ]
    ),//Rogan Josh
    Food(
        name: "Handi Chicken",
        description: "A rich and aromatic North Indian dish where chicken is slow-cooked in a traditional handi (clay pot) with a blend of spices, yogurt, and cream.",
        imagePath: "assets/images/northIndian/handiChicken.jpg",
        price: 12.49,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Jeera Rice", price: 2.50),
          Addon(name: "Raita", price: 1.25)
        ]
    ),//Handi Chicken





    Food(
        name: "Tandoori Roti",
        description: "A type of Indian flatbread made from wheat flour dough, traditionally cooked in a tandoor (clay oven), resulting in a soft and slightly charred texture.",
        imagePath: "assets/images/northIndian/tandooriRoti.jpg",
        price: 2.49,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Butter", price: 0.50),
          Addon(name: "Garlic Naan", price: 1.00),
          Addon(name: "Dal Tadka", price: 3.50),
          Addon(name: "Mixed Vegetable Curry", price: 3.00)
        ]
    ),//Tandoori Roti
    Food(
        name: "Naan Roti",
        description: "A popular Indian flatbread made from refined flour dough, typically cooked in a tandoor (clay oven), resulting in a soft and fluffy texture.",
        imagePath: "assets/images/northIndian/naanRoti.jpg",
        price: 2.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Butter", price: 0.50),
          Addon(name: "Garlic Naan", price: 1.00),
          Addon(name: "Dal Tadka", price: 3.50),
          Addon(name: "Mixed Vegetable Curry", price: 3.00)
        ]
    ),//Naan Roti
    Food(
        name: "Butter Naan",
        description: "A soft and fluffy Indian flatbread made from refined flour dough, cooked in a tandoor (clay oven), and brushed with butter for a rich flavor.",
        imagePath: "assets/images/northIndian/butterNaan.jpg",
        price: 3.49,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Garlic Butter", price: 0.75),
          Addon(name: "Dal Makhani", price: 3.50),
          Addon(name: "Mixed Vegetable Curry", price: 3.00),
          Addon(name: "Raita", price: 1.25)
        ]
    ),//Butten Naan
    Food(
        name: "Garlic Naan",
        description: "A popular Indian flatbread made from refined flour dough, typically cooked in a tandoor (clay oven), and topped with minced garlic and cilantro.",
        imagePath: "assets/images/northIndian/garlicNaan.jpg",
        price: 2.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Butter", price: 0.50),
          Addon(name: "Paneer Butter Masala", price: 4.50),
          Addon(name: "Dal Makhani", price: 3.50),
          Addon(name: "Mixed Vegetable Curry", price: 3.00),
          Addon(name: "Raita", price: 1.25)
        ]
    ),//Garlic Naan
    Food(
        name: "Rumali Roti",
        description: "A thin, soft flatbread from North India, made from a combination of whole wheat flour and all-purpose flour, typically served folded like a handkerchief (rumal).",
        imagePath: "assets/images/northIndian/rumaliRoti.jpg",
        price: 3.49,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Paneer Butter Masala", price: 4.50),
          Addon(name: "Chicken Curry", price: 5.50),
          Addon(name: "Dal Tadka", price: 3.50),
          Addon(name: "Mixed Vegetable Raita", price: 2.00),
          Addon(name: "Pickle", price: 0.75)
        ]
    ),//Rumali Roti

    Food(
        name: "Rajma Chawal",
        description: "Rajma Chawal is a popular North Indian dish consisting of red kidney beans cooked in a thick tomato-based gravy, served with steamed basmati rice.",
        imagePath: "assets/images/northIndian/rajmaChawal.jpg",
        price: 10.49,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Papadum", price: 1.00),
          Addon(name: "Mint Raita", price: 1.50),
          Addon(name: "Pickled Onions", price: 0.75),
          Addon(name: "Extra Gravy", price: 1.00),
          Addon(name: "Butter Naan", price: 1.75)
        ]
    ),//Rajma Chawal
    Food(
        name: "Chana Dal Chawal",
        description: "Chana Dal Chawal is a comforting North Indian dish made with split chickpeas (chana dal) cooked with onions, tomatoes, and spices, served with steamed basmati rice.",
        imagePath: "assets/images/northIndian/chanayDalChawal.jpg",
        price: 9.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Papadum", price: 1.00),
          Addon(name: "Cucumber Raita", price: 1.50),
          Addon(name: "Mango Pickle", price: 0.75),
          Addon(name: "Roasted Cumin Powder", price: 0.50),
          Addon(name: "Garlic Naan", price: 1.75)
        ]
    ),//Chana Dal Chawal
    Food(
        name: "Chole Chawal",
        description: "Chole Chawal is a popular North Indian dish featuring spicy chickpea curry (chole) served with steamed basmati rice.",
        imagePath: "assets/images/northIndian/choleChawal.jpg",
        price: 10.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Papadum", price: 1.00),
          Addon(name: "Onion Salad", price: 0.75),
          Addon(name: "Mint Chutney", price: 0.50),
          Addon(name: "Boondi Raita", price: 1.25),
          Addon(name: "Garlic Naan", price: 1.75)
        ]
    ),//Chole Chawal






    Food(
        name: "Rasmalai",
        description: "A popular Indian dessert consisting of soft paneer (cottage cheese) balls soaked in sweet, flavored milk and garnished with nuts.",
        imagePath: "assets/images/northIndian/rasmalai.jpg",
        price: 5.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Extra Nuts", price: 0.50),
          Addon(name: "Saffron Strands", price: 0.75),
          Addon(name: "Rose Water", price: 0.50),
          Addon(name: "Cardamom Powder", price: 0.25),
          Addon(name: "Silver Foil", price: 0.50)
        ]
    ),//Rasmalai
    Food(
        name: "Gulab Jamun",
        description: "A classic Indian dessert made of deep-fried dough balls soaked in a sweet, fragrant syrup flavored with cardamom and rose water.",
        imagePath: "assets/images/northIndian/gulabJamun.jpg",
        price: 4.99,
        category: FoodCategory.northIndian,
        availableAddons: [
          Addon(name: "Extra Syrup", price: 0.50),
          Addon(name: "Saffron Garnish", price: 1.00),
          Addon(name: "Chopped Nuts", price: 0.75),
          Addon(name: "Vanilla Ice Cream", price: 1.50),
          Addon(name: "Rose Petals", price: 0.50)
        ]
    ),




    //South Indian

      //Dosa
    Food(
        name: "Dosa",
        description: "A popular South Indian dish, Dosa is a thin, crispy crepe made from fermented rice and lentil batter. It is typically served with coconut chutney and sambar (a spicy lentil soup with vegetables).",
        imagePath: "assets/images/southIndian/dosa.jpg",
        price: 8.99,
        category: FoodCategory.southIndian,
        availableAddons: [
          Addon(name: "Extra Coconut Chutney", price: 0.50),
          Addon(name: "Extra Sambar", price: 1.00),
          Addon(name: "Masala Dosa", price: 10.99),
          Addon(name: "Butter Dosa", price: 9.99),
          Addon(name: "Onion Dosa", price: 9.99)
        ]
    ),//Normal Dosa
    Food(
        name: "Masala Dosa",
        description: "A popular South Indian dish, Masala Dosa is a thin, crispy crepe made from fermented rice and lentil batter, filled with a spiced potato filling. It is typically served with coconut chutney and sambar (a spicy lentil soup with vegetables).",
        imagePath: "assets/images/southIndian/masalaDosa.jpeg",
        price: 10.99,
        category: FoodCategory.southIndian,
        availableAddons: [
          Addon(name: "Extra Coconut Chutney", price: 0.50),
          Addon(name: "Extra Sambar", price: 1.00),
          Addon(name: "Plain Dosa", price: 8.99),
          Addon(name: "Butter Dosa", price: 9.99),
          Addon(name: "Onion Dosa", price: 9.99)
        ]
    ),//Masala Dosa
    Food(
        name: "Mysore Dosa",
        description: "Mysore Dosa is a South Indian crepe made from fermented rice and lentil batter, spread with a spicy red chutney made from red chillies and garlic, and served with coconut chutney and sambar.",
        imagePath: "assets/images/southIndian/mysoreDosa.jpg",
        price: 7.99,
        category: FoodCategory.southIndian,
        availableAddons: [
          Addon(name: "Masala Filling", price: 2.00),
          Addon(name: "Extra Chutney", price: 0.75),
          Addon(name: "Ghee Roast", price: 1.50),
          Addon(name: "Crispy Papadum", price: 1.00),
          Addon(name: "Filter Coffee", price: 2.50)
        ]
    ),//Mysore Dosa
    Food(
        name: "Onion Dosa",
        description: "Onion Dosa is a South Indian crepe made from fermented rice and lentil batter, filled with chopped onions and spices, served with coconut chutney and sambar.",
        imagePath: "assets/images/southIndian/onionDosa.jpg",
        price: 6.99,
        category: FoodCategory.southIndian,
        availableAddons: [
          Addon(name: "Potato Masala", price: 1.50),
          Addon(name: "Extra Chutney", price: 0.75),
          Addon(name: "Ghee Roast", price: 1.50),
          Addon(name: "Crispy Papadum", price: 1.00),
          Addon(name: "Filter Coffee", price: 2.50)
        ]
    ),//Onion Dosa
    Food(
        name: "Aloo Dosa",
        description: "Aloo Dosa is a South Indian crepe made from fermented rice and lentil batter, filled with a spiced potato filling, served with coconut chutney and sambar.",
        imagePath: "assets/images/southIndian/alooDosa.jpg",
        price: 8.49,
        category: FoodCategory.southIndian,
        availableAddons: [
          Addon(name: "Extra Chutney", price: 0.75),
          Addon(name: "Ghee Roast", price: 1.50),
          Addon(name: "Crispy Papadum", price: 1.00),
          Addon(name: "Buttermilk", price: 1.25),
          Addon(name: "Filter Coffee", price: 2.50)
        ]
    ),//Aloo Dosa

    //Idli
    Food(
        name: "Idli",
        description: "Idli is a traditional South Indian steamed rice cake made from fermented rice and black lentil batter. It is soft, fluffy, and typically served with sambar (a spicy lentil soup with vegetables) and coconut chutney.",
        imagePath: "assets/images/southIndian/idli.jpg",
        price: 6.99,
        category: FoodCategory.southIndian,
        availableAddons: [
          Addon(name: "Extra Sambar", price: 1.00),
          Addon(name: "Extra Coconut Chutney", price: 0.50),
          Addon(name: "Rava Idli", price: 7.99),
          Addon(name: "Ghee Roast", price: 8.99),
          Addon(name: "Podi Idli", price: 7.99)
        ]
    ),//Idli

    Food(
        name: "Sambar Vada",
        description: "Sambar Vada is a popular South Indian snack where crispy, fried lentil donuts (vadas) are soaked in sambar, a spicy and tangy lentil soup with vegetables. It is typically garnished with fresh cilantro and served with coconut chutney.",
        imagePath: "assets/images/southIndian/sambharVada.jpeg",
        price: 7.99,
        category: FoodCategory.southIndian,
        availableAddons: [
          Addon(name: "Extra Sambar", price: 1.00),
          Addon(name: "Extra Vada", price: 1.50),
          Addon(name: "Coconut Chutney", price: 0.75),
          Addon(name: "Fried Green Chilies", price: 0.50),
          Addon(name: "Garlic Chutney", price: 0.75)
        ]
    ),//Sambhar Vada

    Food(
        name: "Uttapam",
        description: "Uttapam is a popular South Indian dish resembling a thick pancake made from fermented rice and lentil batter. It is typically topped with various vegetables such as onions, tomatoes, and cilantro, and served with coconut chutney and sambar.",
        imagePath: "assets/images/southIndian/uttapam.jpeg",
        price: 9.99,
        category: FoodCategory.southIndian,
        availableAddons: [
          Addon(name: "Extra Sambar", price: 1.00),
          Addon(name: "Extra Coconut Chutney", price: 0.50),
          Addon(name: "Mixed Veg Uttapam", price: 10.99),
          Addon(name: "Onion Uttapam", price: 10.99),
          Addon(name: "Cheese Uttapam", price: 11.99)
        ]
    ),//Uttapam

    Food(
        name: "Idiyappam",
        description: "Idiyappam, also known as string hoppers, is a traditional South Indian dish made from rice flour, shaped into thin noodles and steamed to perfection. It is typically served with coconut milk, curry, or sweetened with sugar and grated coconut.",
        imagePath: "assets/images/southIndian/iddiyapam.jpg",
        price: 3.99,
        category: FoodCategory.southIndian,
        availableAddons: [
          Addon(name: "Coconut Milk", price: 1.00),
          Addon(name: "Vegetable Curry", price: 2.50),
          Addon(name: "Sweetened Coconut", price: 1.50),
          Addon(name: "Spicy Chutney", price: 1.00),
          Addon(name: "Ghee", price: 0.75)
        ]
    ),//Idiyappam

    Food(
        name: "Pesarattu",
        description: "Pesarattu is a popular South Indian crepe made from green gram (moong dal) batter, blended with spices like ginger and cumin, and typically served with ginger chutney or upma.",
        imagePath: "assets/images/southIndian/perasattu.jpg",
        price: 4.49,
        category: FoodCategory.southIndian,
        availableAddons: [
          Addon(name: "Ginger Chutney", price: 1.00),
          Addon(name: "Upma", price: 2.50),
          Addon(name: "Tomato Chutney", price: 1.50),
          Addon(name: "Coconut Chutney", price: 1.25),
          Addon(name: "Sambar", price: 1.50)
        ]
    ),//Perasattu

    Food(
        name: "Pulihora",
        description: "Pulihora, also known as Tamarind Rice, is a tangy and flavorful South Indian dish made with cooked rice seasoned with a special blend of tamarind paste, peanuts, curry leaves, and spices.",
        imagePath: "assets/images/southIndian/pulihora.jpg",
        price: 5.99,
        category: FoodCategory.southIndian,
        availableAddons: [
          Addon(name: "Papad", price: 1.00),
          Addon(name: "Cucumber Raita", price: 1.50),
          Addon(name: "Boondi", price: 0.75),
          Addon(name: "Mango Pickle", price: 1.25),
          Addon(name: "Fried Chillies", price: 0.50)
        ]
    ),//Pulihora

    Food(
        name: "Mysore Bonda",
        description: "Mysore Bonda is a popular South Indian snack made from urad dal batter, seasoned with spices like green chilies, ginger, and curry leaves, deep-fried to a golden brown perfection.",
        imagePath: "assets/images/southIndian/mysoreBonda.jpg",
        price: 3.49,
        category: FoodCategory.southIndian,
        availableAddons: [
          Addon(name: "Coconut Chutney", price: 1.00),
          Addon(name: "Sambar", price: 1.50),
          Addon(name: "Mint Chutney", price: 0.75),
          Addon(name: "Tomato Chutney", price: 1.25),
          Addon(name: "Masala Chai", price: 2.00)
        ]
    ),//Mysore Bonda

  ];




  //G E T T E R S

  List<Food> get menu => _menu;
  List<CartItem> get cart =>  _cart;
  String get deliveryAddress => _deliveryAdderess;




  //O P E R A T I O N S

  //Delivery Adderess

  String _deliveryAdderess = "Earth, Near Sun";


    //User Cart
  final List<CartItem> _cart = [];


    //Add to Cart
void addToCart(Food food,  List<Addon> selectedAddons){
  CartItem? cartItem = _cart.firstWhereOrNull((item){

    //Check if food items are same
    bool isSameFood = item.food ==  food;

    //Check if the list of selected addons are the same
    bool isSameAddons = ListEquality().equals(item.selectedAddons, selectedAddons);

    return isSameFood && isSameAddons;

  });

  //If item already exists, increase quantity. Else make aa new cart item.
  if(cartItem != null)
    {
      cartItem.quantity++;
    }

  else
  {
    _cart.add(
        CartItem(
            food: food,
            selectedAddons: selectedAddons
        )
    );
  }
  notifyListeners();
}


void updateDeliveryAddress(String newAddress){
  _deliveryAdderess = newAddress;
  notifyListeners();
}


    //Remove from the cart
void removeFromCart(CartItem cartItem){
  int cartIndex = _cart.indexOf(cartItem);

  if(cartIndex != -1)
    {
      if(_cart[cartIndex].quantity >1)
        {
          _cart[cartIndex].quantity--;
        }

      else{
        _cart.removeAt(cartIndex);
      }
    }
  notifyListeners();
}

    //Get total Price of the cart
double getTotalPrice()
{
  double total = 0.0;

  for(CartItem cartItem in _cart)
    {
      double itemTotal = cartItem.food.price;

      for(Addon addon in cartItem.selectedAddons){
        itemTotal+= addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

  return total;
}

    //Get total number of items in the cart
  int getTotalItemCount(){
    int totalItemCount = 0;

    for(CartItem cartItem in _cart)
      {
        totalItemCount += cartItem.quantity;
      }

     return totalItemCount;
  }


    //Clear the cart
   void clearCart(){
      _cart.clear();
      notifyListeners();
    }



  //H E L P E R S

    //Generate the Receipt

  String displayCartReceipt(){

      final receipt = StringBuffer();
      receipt. writeln("Here's your receipt");
      receipt.writeln();

      //format the date to include up to seconds only
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------");

    for(final cartItem in _cart)
      {
        receipt.writeln("${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");

        if(cartItem.selectedAddons.isNotEmpty)
          {
            receipt.writeln("   Add-ons:  ${_formatAddon(cartItem.selectedAddons)}");
          }

        receipt.writeln();
      }

    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice()+2.99)}");
    receipt.writeln();
    receipt.writeln("Delivering to: ${deliveryAddress}");

    return receipt.toString();
  }

    //format double value into the money
    String _formatPrice(double price)
    {
        return "\$" + price.toStringAsFixed(2);
    }

    //format list of addons into a string summary

    String _formatAddon(List<Addon> addons){

        return addons.map((addon) =>  "${addon.name} (${_formatPrice(addon.price)})").join(", ");
    }


}