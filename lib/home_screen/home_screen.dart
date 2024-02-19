import 'package:flutter/material.dart';
import 'package:untitled/home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                SizedBox(
                  height: 16,
                ),
                const Text(
                  'Find the Perfect Roommate',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "We've helped millions across the nation find their perfect match... and you're next!",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff656F77),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox( height:40,width:163, child: HomeWidget(title: 'Explore'),),
                    SizedBox(
                      width: 16,
                    ),
                    SizedBox(
                      height:40,width:163,
                      child: HomeWidget(
                        title: 'Log in',
                        isGreen: true,
                        isIcon: true,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 48,
                ),
                Image.asset('assets/image/person.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
