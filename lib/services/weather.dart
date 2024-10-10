class WeatherModel {
 String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩️';
    } else if (condition < 400) {
      return '🌧️';
    } else if (condition < 600) {
      return '🌧️';
    } else if (condition < 700) {
      return '❄️';
    } else if (condition < 800) {
      return '🌫️';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🌡️';
    }
  }

  String getMessage(dynamic temp) {
    if (temp > 25) {
      return 'It\'s sunny in your location';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'it/s really cold in your location';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
