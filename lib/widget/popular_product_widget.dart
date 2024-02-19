import 'package:flutter/material.dart';

import '../core/untity/popular_product.dart';

class PopularProductWidget extends StatelessWidget {
  // final String adressimge;
  // final String title;
  // final String price;
  final PopularProduct entiti;
  const PopularProductWidget(
      {Key? key,
 required this.entiti})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 131,
      height: 221,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          const SizedBox(
            height: 22,
          ),
          Container(
              width: 92,
              height: 92,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(entiti.adressimge),
                  fit: BoxFit.cover
                )
              ),
              ),
          const SizedBox(
            height: 33,
          ),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(entiti.title, style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff656F77)),
                ),
                Text(
                  entiti.price,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff656F77)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
