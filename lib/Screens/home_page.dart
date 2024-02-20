import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Screens/search_page.dart';
import 'package:weather_app/Widgets/no_weather_body.dart';
import 'package:weather_app/Widgets/weather_info_body.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:const Text('Weather App' ,style:
        TextStyle(
          fontWeight: FontWeight.bold ,
          fontSize: 22 ,
        ),
        ),
        actions: [
          IconButton(onPressed:(){
           Navigator.of(context).push(MaterialPageRoute(builder: (context)
           {
             return const SearchPage();
           } ),
           );
              }, icon:const Icon(Icons.search),
          ),
        ],
      ),

     //Step5 integrate cubit
      body: BlocBuilder<GetWeatherCubit,WeatherState>(
        builder: (context,state) {
        if(state is NoWeatherInitialState )
          {
            return const NoWeatherBody() ;
          }
        else if (state is WeatherLoadingState)
        {
          return const Center(child: CircularProgressIndicator(),) ;
        }
        else if (state is WeatherSuccessState)
            {
              return  WeatherInfoBody(weather: state.weatherModel,) ;
            }
        else{
          return const Text('Ops, there wan an error , try again ');
        }
        },
      ) ,

    );
  }
}