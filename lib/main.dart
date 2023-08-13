import 'package:get/get.dart';
import 'package:nextgenweather/nextgenweather.dart';
import 'package:nextgenweather/views/screens/weather.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Nextgenweather());
}

class Nextgenweather extends StatelessWidget {
  const Nextgenweather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      // designSize: const Size(430, 932),
      builder: (context, widget) {
        return GetMaterialApp(
          title: 'Nextgenweather',
          debugShowCheckedModeBanner: false,
          navigatorKey: AppKeys.navigation,
          theme: ThemeData(),
          home: widget,
        );
      },
      child: const Weather(),
    );
  }
}
