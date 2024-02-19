import 'package:flutter/material.dart';
import 'package:test_test_two/core/uilts/asset.dart';

import '../core/untity/popular_product.dart';
import '../widget/popular_product_widget.dart';
import 'favorites_screen.dart';

class FavoritesShopScreen extends StatelessWidget {
  final List<PopularProduct> listProducts = [
    PopularProduct(adressimge: Asset.avatar, title: "Jhon", price: "\$500"),
    PopularProduct(adressimge: Asset.avatar, title: "Jhon1", price: "\$5000"),
    PopularProduct(adressimge: Asset.avatar, title: "Jhon2", price: "\$600"),
    PopularProduct(adressimge: Asset.avatar, title: "Jhon3", price: "\$100"),
    PopularProduct(adressimge: Asset.avatar, title: "Jhon4", price: "\$700"),
  ];
  
  static route() =>
      MaterialPageRoute(builder: (context) => FavoritesShopScreen());

   FavoritesShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xffE8EEF3),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const FavoritesScreen()));
                        },
                        icon: const Icon(Icons.arrow_back_ios)),
                    const Text(
                      "Favorites",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 24,
                          color: Color(0xff191D21)),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_cart))
                  ],
                ),
                SizedBox(height: 8,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 396,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          "Italy",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff191D21)),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "Discover and find new roomates around the world",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff656F77)),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 240,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(Asset.cityTour),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 86,
                            height: 40,
                            decoration: BoxDecoration(
                                color: const Color(0xff191D21),
                                borderRadius: BorderRadius.circular(4)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Buy",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                  size: 18,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Popular",
                  style: TextStyle(
                    color: Color(0xff191D21),
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final item = listProducts[index];
                      return PopularProductWidget(
                        entiti: item,
                      );
                    },
                    itemCount: listProducts.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 8,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
