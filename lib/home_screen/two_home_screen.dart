import 'package:flutter/material.dart';
import 'package:untitled/home_widget.dart';

class TwoHomeScreen extends StatefulWidget {
  const TwoHomeScreen({super.key});

  @override
  State<TwoHomeScreen> createState() => _TwoHomeScreenState();
}

class _TwoHomeScreenState extends State<TwoHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xffCBE3FF),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 55,
                ),
                Image.asset('assets/image/people.png'),
                const SizedBox(
                  height: 24,
                ),
                const Center(
                  child: Text(
                    "Find Your Roomie",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Center(
                  child: Text( textAlign:TextAlign.center,
                    "We've helped millions across the nation find their perfect match... and you're next!",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff656F77),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const SizedBox(height: 57, width: 343,child: HomeWidget(title: "Let's go"),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
