import 'location.dart';
import 'networking.dart';

var apiKey = 'eec9c8aba2d33796265cd2899af6c192';
var mainUrl = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getLocation();

    NetWorking netWorking = NetWorking(Uri.parse(
        '$mainUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric'));

    var data = await netWorking.getData();
    return data;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }

  Future<dynamic> getCityWeather(String cityName) async {
    NetWorking netWorking = NetWorking(
        Uri.parse('$mainUrl?q=$cityName&appid=$apiKey&units=metric'));

    var data = await netWorking.getData();
    return data;
  }
}
