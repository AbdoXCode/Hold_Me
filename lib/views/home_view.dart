import 'package:flutter/material.dart';
import 'package:hold_me/views/hold_view.dart';
import 'package:hold_me/views/still_view.dart';
import 'package:sensors_plus/sensors_plus.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});




  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


  bool isIdle = false;

  @override
  void initState() {
    super.initState();
    gyroscopeEvents.listen((GyroscopeEvent event){
      setState(() {
        double minimum=0.3;
        if(event.x.abs() <minimum&&event.y.abs() <minimum&&event.z.abs() <minimum){
            isIdle = true;
        }else{
          isIdle = false;
        }
      });
    });



  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: isIdle ? Colors.red:Colors.green,
      body: isIdle ? StillView():HoldView(),
    );
  }
}
