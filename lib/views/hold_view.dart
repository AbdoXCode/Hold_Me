import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HoldView extends StatefulWidget {
  const HoldView({super.key});

  @override
  State<HoldView> createState() => _HoldViewState();
}

class _HoldViewState extends State<HoldView> {
  late final AudioPlayer player;
  @override
  void initState() {
    super.initState();

    player = AudioPlayer();
    Player();
  }

  void Player(){
    player.play(AssetSource('sound/a_baby_laugh.mp3'));
  }
  @override
  void dispose() {
    player.stop();
    player.dispose();
    super.dispose();
  }
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
