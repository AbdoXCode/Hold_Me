import 'package:flutter/material.dart';
import 'package:hold_me/views/hold_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: HoldView(),
    );
  }
}
