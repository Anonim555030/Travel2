import 'package:flutter/material.dart';
import 'package:test_test_two/screen/favorites_shop_screen.dart';

import '../core/uilts/asset.dart';
import '../widget/advianture_card_widget.dart';

class FavotitesSerchScreen extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => FavotitesSerchScreen());

  const FavotitesSerchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xffFFFFFF),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16,),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Favorites",style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff191D21)
                  ),),
                  Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffCBE3FF)
                  ),
                    child: Image.asset(Asset.avatar),
                  )
                ],
              ),
                  SizedBox(height: 16,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Color(0xffACB8C2))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Search",style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xff656F77)
                          ),),
                          Icon(Icons.search,color: Color(0xff656F77),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16,),
                  Text("Around the World",style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff191D21)
                  ),),
                  SizedBox(height: 16,),
                  AdviantureCardWidget(title: "L.A.", text: "Discover new places and find new adventures. ", price: "\$500", image: Asset.campfare,onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FavoritesShopScreen()));
                  },),
                  SizedBox(height: 16,),
                  AdviantureCardWidget(title: "L.A.", text: "Discover new places and find new adventures. ", price: "\$500", image: Asset.campfare,onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FavoritesShopScreen()));
                  },),
                  SizedBox(height: 16,),
                  AdviantureCardWidget(title: "L.A.", text: "Discover new places and find new adventures. ", price: "\$500", image: Asset.campfare,onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FavoritesShopScreen()));
                  },),
                  SizedBox(height: 16,),
                  AdviantureCardWidget(title: "L.A.", text: "Discover new places and find new adventures. ", price: "\$500", image: Asset.campfare,onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FavoritesShopScreen()));
                  },),
                  SizedBox(height: 16,),
                  AdviantureCardWidget(title: "L.A.", text: "Discover new places and find new adventures. ", price: "\$500", image: Asset.campfare,onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FavoritesShopScreen()));
                  },),
                  SizedBox(height: 16,)
              ]
                        ),
            ),
        ),
      ),
      )
    );
  }
}
