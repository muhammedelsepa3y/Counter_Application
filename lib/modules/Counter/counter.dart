import 'package:flutter/material.dart';
import 'package:animated_flip_counter/animated_flip_counter.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int x=0;

  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff50c878),
        centerTitle: true,
        title: Text(
            'Counter',
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          TextButton(onPressed: (){
            setState((){x=0;});
          }, child: Text("Reset",style: TextStyle(
            fontSize: 15,
            color: Colors.white
          ),))
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color:Color(0xff50c878),
              ),
              child: TextButton(onPressed: (){
                setState((){x=x-1;
                });}, child: Text("-1",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: AnimatedFlipCounter(
                value: x,
                duration: Duration(seconds: 1),
                curve: Curves.elasticOut,
                textStyle: TextStyle(fontSize: 80, color:Color(0xff50c878),),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color:Color(0xff50c878),
              ),

              child: TextButton(onPressed: (){
                setState((){x=x+1;
                });
              }, child: Text("+1",style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
              )
              ),
            ),
          ],
        ),
      ),

    );
  }


}
