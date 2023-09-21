import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'business_logic/counter_cubit.dart';
import 'presentation/screens/HomeScreen.dart';
import 'presentation/screens/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>CounterCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        initialRoute: HomePage.id,
        routes: {
          HomePage.id: (context) => const HomePage(),
          CounterScreen.id: (context) => const CounterScreen(),
        }
      ),
    );
  }
}
