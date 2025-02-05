import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HoldView extends StatelessWidget {
  const HoldView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Happy',style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold),),
      
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text('😊',style: TextStyle(fontSize: 100),),
            )
          ],
        ),
    );
  }
}
