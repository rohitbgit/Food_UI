import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String foodImage;
  final String foodTitle;
  final String foodDescription;
  final int calories;
  final double price;
  final double height;

  const FoodCard({
    super.key,
    required this.foodImage,
    required this.foodTitle,
    required this.foodDescription,
    required this.calories,
    required this.price,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Stack(
        children: [
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            margin: const EdgeInsets.only(top: 40),  // Adjust to move card down
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 8.0, right: 8.0,bottom: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 60), // Adjust to create space for the image
                  Text(
                    foodTitle,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 4),
                  Text(foodDescription),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.local_fire_department_sharp,color: Colors.orangeAccent,),
                      Text(
                        '$calories Calories',
                        style: const TextStyle(color: Colors.deepOrangeAccent),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("\$",style: TextStyle(color: Colors.orangeAccent,fontWeight: FontWeight.bold),),
                      Text(
                        '$price',
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                    ],
                  )

                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 16,
            right: 16,
            child: Center(
              child: ClipRect(
                child: Align(
                  alignment: Alignment.topCenter,
                  heightFactor: 1, // Show only the top half of the image
                  child: Image.asset(
                    foodImage,
                    width: 160,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
