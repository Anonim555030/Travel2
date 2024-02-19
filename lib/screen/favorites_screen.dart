import 'package:flutter/material.dart';


import '../core/uilts/asset.dart';
import '../widget/category_roomies_widget.dart';
import 'favotites_serch_screen.dart';



class FavoritesScreen extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => FavoritesScreen());

  const FavoritesScreen({Key? key}) : super(key: key);

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
            child: SingleChildScrollView(
              child: Column(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(onPressed:(){

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FavotitesSerchScreen()));
                      }, icon: Icon(Icons.search,color:Color(0xfff656F77))),
                      SizedBox(width: 20,),
                      Icon(Icons.star,color:Color(0xff656F77))
                    ],
                  ),

                ],
              ),
                  SizedBox(height: 16,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x1f000000),
                            blurRadius: 24,
                          )
                        ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 140,
                            height: 167,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage(Asset.cityTour),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Italy",style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff656F77)
                              ),),
                              SizedBox(height:8),
                              Container(
                                width: 171,
                                child: Text("Meet new roomies and find new adventures.",style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 24,
                                    color: Color(0xff000000)
                                ),),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16,),
                  CategoryRoomiesWidget(title: "Summer Roomies", onTap: (){}, subtitle: "Caribbean"),
                  SizedBox(height: 16,),
                  CategoryRoomiesWidget(title: "European Roomies", onTap: (){}, subtitle: "France"),
                  SizedBox(height: 16,),
                  CategoryRoomiesWidget(title: "Foodie Roomies", onTap: (){}, subtitle: "Gastro Tour"),
                  SizedBox(height: 16,),
                  CategoryRoomiesWidget(title: "New Roomies", onTap: (){}, subtitle: "Ukraine"),
                  SizedBox(height: 16,),
                  CategoryRoomiesWidget(title: "Spanish Roomies", onTap: (){}, subtitle: "Spain"),
                  SizedBox(height: 16,),
                  CategoryRoomiesWidget(title: "British Roomies", onTap: (){}, subtitle: "Great Britain"),
                  SizedBox(height: 16,),

                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
