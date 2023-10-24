import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget{
  const WeatherInfoBody({super.key, required this.weather});

  final WeatherModel weather;
  @override
  Widget build(BuildContext context) {
    WeatherModel weather_model=BlocProvider.of<GetWeatherCubit>(context).weatherModel!;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:[getThemeColor(weather_model.weatherCondition),
                   getThemeColor(weather_model.weatherCondition)[200]!,
                   getThemeColor(weather_model.weatherCondition)[50]!,] ,
          begin:Alignment.topCenter, end:Alignment.bottomCenter ,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(weather_model.cityName ,
               style: const TextStyle(
                 fontSize: 22,
                 fontWeight: FontWeight.bold,
                 color: Colors.black,
               ) ,
             ),
               Text('Updated at ${weather_model.date.hour}:${weather_model.date.minute}' ,
               style:const TextStyle(
                 fontSize: 22,
                 color: Colors.black,
               ) ,
             ),
             const SizedBox(height: 16,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Image.network("https:${weather_model.image}"),
                 Text(weather_model.temp.round().toString() ,
                   style:const TextStyle(
                     fontSize: 22,
                     color: Colors.black,
                   ) ,
                 ),
                  Column(
                   children: [
                     Text('max temp: ${weather_model.maxTemp.round()}',
                       style:const TextStyle(
                         fontSize: 22,
                         color: Colors.black,
                       ) ,
                     ),
                     Text('min temp: ${weather_model.minTemp.round()}',
                       style:const TextStyle(
                         fontSize: 22,
                         color: Colors.black,
                       ) ,
                     ),
                   ],

                 )
               ],
             ),
             const SizedBox(height: 32,),

            Text(weather_model.weatherCondition ,
               style:const TextStyle(
                 fontSize: 30,
                 color: Colors.black,
                 fontWeight: FontWeight.bold
               ) ,
             ),

           ],

        ),
      ),
    );
  }

}