import 'package:flutter/material.dart';
import 'package:instagram/util/shop_grid.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.grey[350],
            child: Row(
              children: [
                const Icon(Icons.search, size: 30),
                Text(
                  'Search',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: const ShopGrid(),
    );
  }
}
