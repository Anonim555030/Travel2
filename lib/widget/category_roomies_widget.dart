import 'package:flutter/material.dart';

class CategoryRoomiesWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function() onTap;
  const CategoryRoomiesWidget({Key? key, required this.title, required this.onTap, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0x1f000000),
                blurRadius: 24,
                spreadRadius: -4,
                offset: Offset(0,12)
              )
            ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff191D21)
                  ),),
                  SizedBox(height: 4,),
                  Text(subtitle,style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff656F77)
                  ),)
                ],
              ),
              Icon(Icons.arrow_forward_ios,color: Color(0xff191D21),size: 18,)
            ],
          ),
        ),
      ),
    );
  }
}
