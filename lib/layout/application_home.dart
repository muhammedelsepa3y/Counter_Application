import 'package:flutter/material.dart';

import '../modules/Counter/counter.dart';


class HomePagee extends StatefulWidget {
  const HomePagee({Key? key}) : super(key: key);

  @override
  State<HomePagee> createState() => _HomePageeState();
}

class _HomePageeState extends State<HomePagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("ww.png",height: 150,width: 150,),
                  SizedBox(height: 25,),
                  Text("Counter Application",style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w900
                  ),),
                  SizedBox(height: 30,),
                ],),
            ),


            Container(
              width: double.infinity,
              color: Color(0xff50c878),
              child: MaterialButton(
                height: 70,
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CounterScreen()));
                  });
                },
                child: Text(
                  "Start App",
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}