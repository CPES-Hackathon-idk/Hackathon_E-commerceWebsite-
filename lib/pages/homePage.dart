import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:commerce/models/data.dart';
import 'package:commerce/models/product.dart';
import 'package:commerce/pages/shoppingPage.dart';
import 'package:commerce/themes/light_color.dart';
import 'package:commerce/widgets/extentions.dart';
import 'package:commerce/widgets/product_card.dart';
import 'package:flutter/material.dart';

import '../widgets/title_text.dart';
import 'detailsPage.dart';
import 'shopping_cart_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isDesktop = screenWidth > 820;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: LightColor.orange,
        title: Text('Sneekery'),
        leading: IconButton(
          icon: Icon(Icons.snowshoeing),
          onPressed: () {},
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
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.amber

            ),
          ),
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: [
                OverflowBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: OverflowBar(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Welcome to our shop',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: isDesktop ? 35 : 25,
                                    ),
                                    maxLines: 1,
                                  ),
                                  Text(
                                    'Sneekery',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: screenWidth > 820 ? 100 : 30,
                                    ),
                                    maxLines: 1,
                                  ),
                                  SizedBox(
                                    width: 600,
                                    child: Text(
                                      AppData.description,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: isDesktop ? 18 : 12,
                                      ),
                                      maxLines: 10,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ShoppingPage(),
                                          ),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: StadiumBorder(),
                                        primary: LightColor.orange,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Shop Now!',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: isDesktop ? 20 : 15),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/Saly-33.png',
                      //width: screenWidth / 2,
                      width: 500,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'some of the our unique services',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: isDesktop ? 40 : 25,
                    color: LightColor.skyBlue,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  direction: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        width: 215,
                        child: Column(
                          children: [
                            Container(
                              width: 85,
                              height: 85,
                              decoration: BoxDecoration(
                                color: LightColor.orange,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Icon(
                                  Icons.inventory_2,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Return Policy',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: isDesktop ? 20 : 16,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'If you are not satisfied with your purchase, we will refund your money within 7 days of receiving your item.',
                              style: TextStyle(
                                fontSize: isDesktop ? 18 : 15,
                                fontWeight: FontWeight.w600,
                                color: LightColor.lightblack,
                              ),
                              maxLines: 6,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        width: 215,
                        child: Column(
                          children: [
                            Container(
                              width: 85,
                              height: 85,
                              decoration: BoxDecoration(
                                color: LightColor.orange,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Icon(
                                  Icons.support_agent,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Customer Service',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: isDesktop ? 20 : 16,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Our Customer Service is always ready to help you with any questions you may have.',
                              style: TextStyle(
                                fontSize: isDesktop ? 18 : 15,
                                color: LightColor.lightblack,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 6,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        width: 215,
                        child: Column(
                          children: [
                            Container(
                              width: 85,
                              height: 85,
                              decoration: BoxDecoration(
                                color: LightColor.orange,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Icon(
                                  Icons.delivery_dining,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Delivery',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: isDesktop ? 20 : 16,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'We Deliver to your doorstep!',
                              style: TextStyle(
                                fontSize: isDesktop ? 18 : 15,
                                fontWeight: FontWeight.w600,
                                color: LightColor.lightblack,
                              ),
                              maxLines: 6,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Most featured products on the website',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: isDesktop ? 40 : 25,
                    color: LightColor.skyBlue,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 400.0,
                    autoPlay: true,
                  ),
                  items: AppData.productList.map((product) {
                    return Builder(
                      builder: (BuildContext context) {
                        return ProductCard(
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
                            });
                      },
                    );
                  }).toList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
