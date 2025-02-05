import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class StillView extends StatefulWidget {
  const StillView({super.key});

  @override
  State<StillView> createState() => _StillViewState();
}

class _StillViewState extends State<StillView> {

  late final AudioPlayer player;
  @override
  void initState() {
    super.initState();

    player = AudioPlayer();
    Player();
  }

  void Player(){
    player.play(AssetSource('sound/baby_who_cries.mp3'));
    player.setReleaseMode(ReleaseMode.loop);
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
            Image.network('https://icons.iconarchive.com/icons/microsoft/fluentui-emoji-mono/256/Dotted-Line-Face-icon.png',color: Colors.white,),

            SizedBox(height: 20,),
            const Text('The Phone is Sad ☹️',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color:Colors.white ),),

          ],
        ),
    );
  }
}
