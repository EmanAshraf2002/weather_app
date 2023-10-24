
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';
class WeatherServices{
  final Dio dio;
  WeatherServices(this.dio);
  final String baseUrl='https://api.weatherapi.com/v1';

 Future<WeatherModel> getCurrentWeather({required String cityName}) async {

   try {
     Response response= await dio.get('$baseUrl/forecast.json?key=89aa9041cfb04bc8a47200754230410&q=$cityName&days=1');
     WeatherModel weatherModel=WeatherModel.fromJson(response.data);
     return weatherModel;
   }
   on DioException catch (e) {
     final String errorMessage= e.response?.data['error']['message'] ??
         'opps ,there was an error ,try later ' ;
     throw Exception(errorMessage);

   }
   catch(e){
   log(e.toString());
   throw Exception('opps ,there was an error ,try later');
   }

   } //end of getCurrentWeather request

} //end of class