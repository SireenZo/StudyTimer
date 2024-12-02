import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_timer/timerservice.dart';

class Timecontroller extends StatefulWidget {
  const Timecontroller({super.key});

  @override
  State<Timecontroller> createState() => _TimecontrollerState();
}

class _TimecontrollerState extends State<Timecontroller> {
  @override
  Widget build(BuildContext context) {
    final provider =Provider.of<TimerService>(context);
    return Container(
      width: 100,
        height: 100,
        decoration:BoxDecoration(color:Colors.black26, shape:BoxShape.circle),
      child:Center(
        child: IconButton(
          onPressed: (){
            provider.timerPlaying ? Provider.of<TimerService>(context, listen: false).pause() : Provider.of<TimerService>(context, listen: false).start();
          },
          icon: provider.timerPlaying? Icon(Icons.pause) : Icon(Icons.play_arrow_sharp),
          color:Colors.white,
          iconSize: 55,),

      )
    );
  }
}
