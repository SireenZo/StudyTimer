import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_timer/timerservice.dart';
import 'package:study_timer/utils.dart';
import 'package:study_timer/widgets/progresswidget.dart';
import 'package:study_timer/widgets/timecontroller.dart';
import 'package:study_timer/widgets/timercard.dart';
import 'package:study_timer/widgets/timoptions.dart';

class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider =Provider.of<TimerService>(context);
    return Scaffold(
      backgroundColor:renderColor(provider.currentState),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: renderColor(provider.currentState),
        title:Text("POMODORO",style:textStyle(25,Colors.white,FontWeight.w700)),
        actions: [
          IconButton(onPressed: ()=>Provider.of<TimerService>(context,listen: false).reset(), icon: Icon(Icons.refresh,color:Colors.white),iconSize:40)
        ],
      ),
      body:SingleChildScrollView(
        child:Container(
          alignment: Alignment.center,
          child: Column(
            children:[
                SizedBox(height:25),
                Timercard(),
                SizedBox(height: 40),
                TimeOptions(),
                SizedBox(height:40),
                Timecontroller(),
              SizedBox(height:50 ,),
              ProgressWidget(),
            ]
          )
        )
      )
    );
  }
}
