//Step1 create state
import 'package:weather_app/models/weather_model.dart';

class WeatherState{

}
class NoWeatherInitialState extends WeatherState{

}
class WeatherLoadedState extends WeatherState {
   final WeatherModel weatherModel;
  WeatherLoadedState(this.weatherModel);

}
class WeatherFailureState extends WeatherState {
   final String errorMassage;
  WeatherFailureState(this.errorMassage);
}