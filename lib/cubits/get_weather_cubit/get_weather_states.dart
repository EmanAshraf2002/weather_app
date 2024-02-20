//Step1 create state
import 'package:weather_app/models/weather_model.dart';

abstract class WeatherState{

}
class NoWeatherInitialState extends WeatherState{}
class WeatherLoadingState extends WeatherState {}
class WeatherSuccessState extends WeatherState{
  final WeatherModel weatherModel;
  WeatherSuccessState(this.weatherModel);

}
class WeatherFailureState extends WeatherState {
     final String errorMassage;
     WeatherFailureState(this.errorMassage);
}



// class NoWeatherInitialState extends WeatherState{
//
// }
// class WeatherLoadedState extends WeatherState {
//    final WeatherModel weatherModel;
//   WeatherLoadedState(this.weatherModel);
//
// }
// class WeatherFailureState extends WeatherState {
//    final String errorMassage;
//   WeatherFailureState(this.errorMassage);
// }