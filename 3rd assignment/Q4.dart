class WeatherReport {
  Map<String, Map<String, dynamic>> cityWeatherData = {};

  void addCityWeather(String city, double temperature, int humidity) {
    cityWeatherData[city] = {
      'temperature': temperature,
      'humidity': humidity,
    };
    print("Weather data for '$city' added.");
  }

  void getWeather(String city) {
    if (cityWeatherData.containsKey(city)) {
      Map<String, dynamic> weather = cityWeatherData[city]!;
      print("Weather in $city:");
      print("Temperature: ${weather['temperature']}°C");
      print("Humidity: ${weather['humidity']}%");
    } else {
      print("Weather data for '$city' not found.");
    }
  }

  void displayAllWeather() {
    if (cityWeatherData.isEmpty) {
      print("No weather data available.");
    } else {
      print("Weather data for all cities:");
      cityWeatherData.forEach((city, weather) {
        print("\nCity: $city");
        print("Temperature: ${weather['temperature']}°C");
        print("Humidity: ${weather['humidity']}%");
      });
    }
  }
}

void main() {
  WeatherReport report = WeatherReport();

  report.addCityWeather("Cairo, Egypt", 29.0, 45);
  report.addCityWeather("Riyadh, Saudi Arabia", 36.5, 15);
  report.addCityWeather("Amman, Jordan", 25.0, 50);

  report.getWeather("Cairo, Egypt");
  report.displayAllWeather();
}
