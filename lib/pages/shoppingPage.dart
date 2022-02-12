import 'package:badges/badges.dart';
import 'package:commerce/models/data.dart';
import 'package:flutter/material.dart';

import '../themes/light_color.dart';
import '../widgets/product_card.dart';
import 'detailsPage.dart';
import 'homePage.dart';
import 'shopping_cart_page.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: LightColor.orange,
        title: Text('Sneekery'),
        leading: IconButton(
          icon: Icon(Icons.snowshoeing),
          onPressed: () {
             Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
          },
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShoppingPage(),
                  ),
                );
              },
              child: Text('Shop'),
              style: TextButton.styleFrom(primary: Colors.white)),
          IconButton(
            icon: Badge(
                badgeContent: Text(AppData.cartList.length.toString()),
                child: Icon(Icons.shopping_cart)),
            onPressed: () {
               Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShoppingCartPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: Wrap(
        children: AppData.productList.map((product) {
          return Builder(
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Tooltip(
                  message: product.name + ' ' + product.price.toString() + 'KD',
                  child: SizedBox(
                    height: 300,
                    width: 200,
                    child: ProductCard(
                      product: product,
                      onSelected: (product) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              product: product,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
