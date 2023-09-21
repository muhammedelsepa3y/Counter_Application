import 'package:counter_application/business_logic/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  static const String id = "CounterScreen";
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff50c878),
        centerTitle: true,
        title: Text(
          'Counter App',
          style: TextStyle(
            fontSize: size.height * 0.05,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              CounterCubit.get(context).reset();
            },
            child: Text(
              "Reset",
              style: TextStyle(
                fontSize: size.height * 0.03,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(size.height * 0.01),
                color: const Color(0xff50c878),
              ),
              child: TextButton(
                onPressed: () {
                  CounterCubit.get(context).decrement();
                },
                child: Text(
                  "-1",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.height * 0.04,
                  ),
                ),
              ),
            ),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: AnimatedFlipCounter(
                    value: CounterCubit.get(context).x,
                    duration: const Duration(seconds: 1),
                    curve: Curves.elasticOut,
                    textStyle: TextStyle(
                      fontSize: size.height * 0.09,
                      color: const Color(0xff50c878),
                    ),
                  ),
                );
              },
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(size.height * 0.01),
                color: const Color(0xff50c878),
              ),
              child: TextButton(
                onPressed: () {
                  CounterCubit.get(context).increment();
                },
                child: Text(
                  "+1",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.height * 0.04,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
