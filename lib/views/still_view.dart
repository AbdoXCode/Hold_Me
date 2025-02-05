import 'package:flutter/material.dart';

class StillView extends StatelessWidget {
  const StillView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Sad',style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold),),

            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text('☹️',style: TextStyle(fontSize: 100),),
            )
          ],
        ),
    );
  }
}
