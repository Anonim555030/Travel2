import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  final String title;
  final bool isGreen;
  const HomeWidget(
      {super.key, required this.title, this.isGreen = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 164,
      decoration: BoxDecoration(
        color: isGreen ? Colors.white : Colors.black,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              color: isGreen ? Colors.black : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
