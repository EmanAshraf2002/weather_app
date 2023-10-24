import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/models/weather_model.dart';

import '../../services/weather_services.dart';
//Step2 create cubit
class GetWeatherCubit  extends Cubit<WeatherState>{
  GetWeatherCubit(): super(NoWeatherInitialState());
  WeatherModel? weatherModel;

  //Step3 create function
  getWeather({required String cityNameValue}) async{
   try {
      weatherModel=await WeatherServices(Dio())
          .getCurrentWeather(cityName: cityNameValue);
       emit(WeatherLoadedState(weatherModel!));
   } catch (e) {
    emit(WeatherFailureState(e.toString()));
   }

  }


}