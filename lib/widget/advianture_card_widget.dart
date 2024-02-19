import 'package:flutter/material.dart';

class AdviantureCardWidget extends StatelessWidget {
  final String title;
  final String text;
  final String price;
  final String image;
  final Function() onTap;
  const AdviantureCardWidget({Key? key, required this.title, required this.text, required this.price, required this.image, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xffFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Color(0x1f000000),
              blurRadius: 24,
              offset: Offset(0,12)
            )
          ]
        ),
        child: Row(
          children: [
            Container(
              width: 163,
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16)),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: 164,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title,style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 24,
                          color: Color(0xff191D21)
                        ),),
                        Container(
                          width: 55,
                          height: 27,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color(0xff191D21)
                          ),
                          child: Center(
                            child: Text(price,style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: Color(0xffFFFFFF)
                            ),),
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 155,
                      child: Text(text,style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xff656F77)
                      ),),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
