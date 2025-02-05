import 'package:flutter/material.dart';

class StillView extends StatelessWidget {
  const StillView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network('https://icons.iconarchive.com/icons/microsoft/fluentui-emoji-mono/256/Dotted-Line-Face-icon.png',color: Colors.white,),

            SizedBox(height: 20,),
            const Text('The Phone is Sad ☹️',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color:Colors.white ),),

          ],
        ),
    );
  }
}
