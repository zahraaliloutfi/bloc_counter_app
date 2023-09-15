import 'package:bloc_counter_app/presentation/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_app_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterAppBloc(),
      child:MaterialApp(
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
      )
    );
  }
}
