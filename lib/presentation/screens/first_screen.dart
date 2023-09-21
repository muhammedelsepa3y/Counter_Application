import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class HomePage extends StatelessWidget {
  static const String id = "HomePage";
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "Assets/ww.png",
                  height: size.height * 0.4,
                  width: size.width * 0.4,
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Center(
                  child: Text(
                    "Counter",
                    style: TextStyle(
                      fontSize: size.height * 0.05,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color:const Color(0xff50c878),
            child: MaterialButton(
              height: size.height * 0.08,
              onPressed: () {
                 Navigator.pushNamedAndRemoveUntil(context, CounterScreen.id, (route) => false);
              },
              child: Text(
                "Start App",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: size.height * 0.03
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
