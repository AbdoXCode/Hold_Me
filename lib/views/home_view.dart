import 'package:flutter/material.dart';
import 'package:hold_me/views/hold_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: HoldView(),
    );
  }
}
