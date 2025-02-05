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

  double _x = 0.0;
  double _y = 0.0;
  double _z = 0.0;
  bool isIdle = false;

  @override
  void initState() {
    gyroscopeEvents.listen((GyroscopeEvent event){
      setState(() {
        _x = event.x;
        _y = event.y;
        _z = event.z;

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
