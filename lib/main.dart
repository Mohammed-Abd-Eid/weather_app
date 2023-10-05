import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/app/home_page.dart';
import 'package:weather_app/bloc/weather_cubit.dart';
import 'package:weather_app/data/determine_Position.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: determinePosition(),
        builder: (context, snapshot) {
          return BlocProvider<WeatherCubit>(
              create: (context) => WeatherCubit()..fetchWeather(),
              child: const HomePage());
        },
      ),
    );
  }
}
