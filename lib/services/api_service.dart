import 'package:http/http.dart' as http;
import 'package:nextgenweather/models/weather_response_model.dart';

var link =
    "https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/dhaka?unitGroup=metric&key=YY8QJLMXBBSNEZVVD4AM8KCZQ";

getDaTA() async {
  var res = await http.get(Uri.parse(link));
  if (res.statusCode == 200) {
    var data = getWeatherResponseModelFromMap(res.body.toString());
    print("data recieved");
    return data;
  }
}
