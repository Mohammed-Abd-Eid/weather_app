// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/bloc/weather_cubit.dart';
import 'package:weather_app/common/widget/widget_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(builder: (context, state) {
      if (state is WeatherSuccess) {
        print(state.weather.weatherConditionCode);
        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 80, right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title(
                      text: "${state.weather.areaName}",
                      size: 32,
                      weight: FontWeight.bold),
                  text(
                    text: DateFormat("")
                        .add_yMMMMEEEEd()
                        .format(state.weather.date!),
                  ),
                  const SizedBox(height: 40),
                  getWeatherIcon(state.weather.weatherConditionCode!),
                  const SizedBox(height: 40),
                  Center(
                    child: title(
                        text:
                            "${state.weather.temperature!.celsius!.round()} °C",
                        size: 48,
                        weight: FontWeight.normal),
                  ),
                  Center(
                    child: text(
                      text: state.weather.weatherMain!.toUpperCase(),
                      color: Colors.pink,
                    ),
                  ),
                  const SizedBox(height: 70),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            title(
                                text:
                                    "${state.weather.windSpeed!.round()} Km/h",
                                size: 20,
                                weight: FontWeight.w600),
                            const SizedBox(height: 10),
                            text(text: "wind"),
                          ],
                        ),
                        Column(
                          children: [
                            title(
                                text: "${state.weather.humidity!.round()} %",
                                size: 20,
                                weight: FontWeight.w600),
                            const SizedBox(height: 10),
                            text(text: "Humidity"),
                          ],
                        ),
                        Column(
                          children: [
                            title(
                                text:
                                    "${state.weather.tempMax!.celsius!.round()} °C",
                                size: 20,
                                weight: FontWeight.w600),
                            const SizedBox(height: 10),
                            text(text: "Maximum"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 70),
                  Container(
                    height: 150,
                    child: ListView(
                      itemExtent: 100,
                      scrollDirection: Axis.horizontal,
                      children: itemWeek(),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      } else if (state is WeatherError) {
        return text(text: state.error);
      } else {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(color: Colors.pink),
          ),
        );
      }
    });
  }
}

/*


 */
