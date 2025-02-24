import 'package:flutter/material.dart';
import 'package:try_flutter/models/shoe_tile.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  const ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    print(shoe.imagePath);
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 0),
          // image
          Image.asset(shoe.imagePath),

          // description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              shoe.description,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          // price + details
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              children: [
                Text(shoe.name, style: TextStyle(fontSize: 20)),
                Text(shoe.price.toString(), style: TextStyle(fontSize: 20))
              ],
            ),
            // button to add to a cart
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: const Icon(Icons.add, color: Colors.white),
            )
          ])
        ],
      ),
    );
  }
}
