import 'package:get/get.dart';
import 'package:nextgenweather/models/weather_response_model.dart';
import 'package:nextgenweather/services/api_service.dart';

class GetControllers extends GetxController {
  var getData;
  var isloaded = false.obs;

  List<Day> daysList = <Day>[];
  var currentWeatherData;
  @override
  void onInit() {
    currentWeatherData = getDaTA();
    super.onInit();
  }
}
