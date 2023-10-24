import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_services.dart';

class SearchPage extends StatelessWidget{
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title:const Text('Search City'),

      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onSubmitted: (value) async{
              //step6 trigger cubit
           var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
               getWeatherCubit.getWeather(cityNameValue: value);
              Navigator.pop(context);

            }  ,
            decoration: InputDecoration(
               border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide:const BorderSide(color: Colors.green) ,
            ),
              contentPadding:const EdgeInsets.symmetric(vertical: 32 , horizontal: 16),
              labelText: 'search',
              hintText: 'Enter city name',
              suffixIcon:const Icon(Icons.search),

            ),

          ),
        ),
      ),

    );
  }

}
