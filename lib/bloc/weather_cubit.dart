// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';
import 'package:weather/weather.dart';
import 'package:weather_app/data/data.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());

  fetchWeather() async {
    emit(WeatherLoading());
    try {
      WeatherFactory weatherFactory =
          WeatherFactory(apiKey, language: Language.ENGLISH);
      Position position = await Geolocator.getCurrentPosition();
      Weather weather = await weatherFactory.currentWeatherByLocation(
          position.latitude, position.longitude);
      print(weather);
      emit(WeatherSuccess(weather));
      print(weather);
    } on Exception catch (e) {
      emit(WeatherError(e.toString()));
      print(e);
    }
  }
}
