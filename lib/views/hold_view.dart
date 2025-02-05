import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HoldView extends StatelessWidget {
  const HoldView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network('https://icons.iconarchive.com/icons/arturo-wibawa/akar/256/face-very-happy-icon.png',color: Colors.white,),

          const SizedBox(height: 20,),
          const Text('The Phone is Happy 😊',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color:Colors.white ),),

        ],
      ),
    );
  }
}
