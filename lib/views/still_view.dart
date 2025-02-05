import 'package:flutter/material.dart';

class StillView extends StatelessWidget {
  const StillView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Sad',style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold),),

            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('☹️',style: TextStyle(fontSize: 100),),
            )
          ],
        ),
      ),
    );
  }
}
