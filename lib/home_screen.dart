import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_ui/FoodCardItems.dart';
import 'FoodItem.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FoodItem> foodItems = [
      FoodItem(
        foodImage: "assets/images/chickpea_salad.png",
        foodTitle: "Green Salad",
        foodDescription: "Healthy breakfast",
        calories: 80,
        price: 6.72,
      ),
      FoodItem(
        foodImage: "assets/images/chilli_salad.png",
        foodTitle: "Sprouts with Veggies",
        foodDescription: "Capiscum",
        calories: 69,
        price: 5.98,
      ),
      FoodItem(
        foodImage: "assets/images/fruit_salad.png",
        foodTitle: "Fruit Salad",
        foodDescription: "Different Food",
        calories: 70,
        price: 8.80,
      ),
      FoodItem(
        foodImage: "assets/images/mix_veg_salad.png",
        foodTitle: "Chicken Dimsum",
        foodDescription: "Spicy chicken dimsum",
        calories: 65,
        price: 6.99,
      ),
      FoodItem(
        foodImage: "assets/images/fried_noodles.png",
        foodTitle: "Fried Noodle",
        foodDescription: "Spicy chicken sauces",
        calories: 190,
        price: 15.9,
      ),
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Icon(
                    Icons.arrow_back_ios_sharp,
                    size: 30,
                  ),
                ),
                const Text(
                  "Search Food",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Sofia-Pro"),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      shape: BoxShape.rectangle,
                      color: Colors.orangeAccent.shade100),
                  child: Image.asset("assets/images/people.png"),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 320,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Spice Food',
                      prefixIcon: Icon(Icons.search_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset("assets/images/filter.png"),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent.shade200,
                      borderRadius: BorderRadius.circular(12)),
                )
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Found\n80 results",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins"),
              ),
            ),
            const SizedBox(height: 4),
            Expanded(
              child: MasonryGridView.count(
                itemCount: foodItems.length,
                crossAxisCount: 2,
                shrinkWrap: true,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                itemBuilder: (context, index) {
                  double ht = index % 2 == 0 ? 290 : 320;
                  final item = foodItems[index];
                  return FoodCard(
                    foodImage: item.foodImage,
                    foodTitle: item.foodTitle,
                    foodDescription: item.foodDescription,
                    calories: item.calories,
                    price: item.price,
                    height: ht,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
