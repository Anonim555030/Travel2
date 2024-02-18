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
    return  Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xffCBE3FF),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(

            ),
          ),
        ),
      ),
    );
  }
}
