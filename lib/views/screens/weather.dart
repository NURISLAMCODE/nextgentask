import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nextgenweather/controllers/get_controllers.dart';
import 'package:nextgenweather/models/weather_response_model.dart';
import 'package:nextgenweather/nextgenweather.dart';

class Weather extends StatelessWidget {
  const Weather({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put((GetControllers()));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: const Text(
          "Weather",
          style: TextStyle(
              color: Color(0xFF282E34),
              fontSize: 25,
              fontWeight: FontWeight.normal,
              letterSpacing: -1),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: FutureBuilder(
                future: controller.currentWeatherData,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    GetWeatherResponseModel data = snapshot.data;
                    List<Day>? daysList = data.days;
                    return SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 11.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  sunWidget(daysList: daysList),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  sunriseWidget(daysList: daysList),
                                  SizedBox(
                                    height: 38.h,
                                  ),
                                  tipWidget(data.description),
                                ],
                              ),
                              cloudWidget(),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          const Text(
                            "Hourly Forecast",
                            style: TextStyle(
                                color: Color(0xff282E34),
                                fontSize: 18,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          hourlyWidget(daysList: daysList),
                          SizedBox(
                            height: 20.h,
                          ),
                        ],
                      ),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                })),
      ),
    );
  }

  Widget cloudWidget() {
    return Container(
      height: 622.h,
      width: 130,
      // padding: EdgeInsets.symmetric(
      //     horizontal: 16.w, vertical: 32.h),
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/background.png",
              ))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/pngwing1.png",
            width: 180.w,
            height: 116.h,
          ),
          // SizedBox(
          //   height: 100.h,
          // ),
          // Image.asset(
          //   "assets/images/ellipse.png",
          //   width: 36.w,
          //   height: 36.h,
          // ),
          const SizedBox(
            height: 200,
          ),
          Image.asset(
            "assets/images/pngwing1.png",
            width: 180.w,
            height: 116.h,
          ),
        ],
      ),
    );
  }

  Widget sunWidget({List<Day>? daysList}) {
    return Container(
      height: 130.h,
      width: 120.w,
      decoration: BoxDecoration(
          color: const Color(0xff141B34),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 4,
              blurRadius: 6,
              offset: const Offset(0, 5),
              // changes the shadow direction
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 17.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/sun.png",
                  width: 24,
                  height: 24,
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  "${daysList![0].uvindex ?? "no data"}",
                  style: const TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                      letterSpacing: -0.48,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                )
              ],
            ),
            const SizedBox(
              height: 5.81,
            ),
            Text(
              "${daysList![0].temp ?? "no data"}",
              style: const TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
                letterSpacing: -1,
                color: Color(0xffffffff),
              ),
            ),
            SizedBox(height: 5.h),
            const Text(
              "Moderate",
              style: TextStyle(
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                  letterSpacing: -0.48,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }

  Widget sunriseWidget({List<Day>? daysList}) {
    return Container(
      height: 250.h,
      width: 120.w,
      decoration: BoxDecoration(
          color: const Color(0xffF3F3F3),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 4,
              blurRadius: 6,
              offset: const Offset(0, 5),
              // changes the shadow direction
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/images/sun01.png",
                  width: 24,
                  height: 24,
                ),
                SizedBox(
                  width: 4.w,
                ),
                const Text(
                  "Sunrise",
                  style: TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                      letterSpacing: -0.48,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(20, 27, 52, 37)),
                )
              ],
            ),
            Text(
              "${DateFormat.jm().format(DateFormat("hh:mm:ss").parse("${daysList![0].sunrise ?? "no data"}"))}",
              // "${daysList![0].sunrise ?? "no data"}",
              style: const TextStyle(
                  fontSize: 19,
                  fontStyle: FontStyle.normal,
                  letterSpacing: -0.768,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff141B34)),
            ),
            SizedBox(
              height: 6.h,
            ),
            Text(
              "SUNSET : ${DateFormat.jm().format(DateFormat("hh:mm:ss").parse("${daysList![0].sunset ?? "no data"}"))}",
              style: const TextStyle(
                  fontSize: 8,
                  fontStyle: FontStyle.normal,
                  letterSpacing: -0.32,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(20, 27, 52, 00)),
            ),
            SizedBox(
              height: 18.h,
            ),
            const Divider(
              color: Color(0xffD9D9D9),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/images/fastwind.png",
                  width: 24,
                  height: 24,
                ),
                SizedBox(
                  width: 4.w,
                ),
                const Text(
                  "WIND",
                  style: TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                      letterSpacing: -0.48,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(20, 27, 52, 37)),
                ),
              ],
            ),
            SizedBox(
              height: 4.w,
            ),
            Text(
              "${daysList[0].windspeed}",
              style: const TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.normal,
                  letterSpacing: -0.1,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff141B34)),
            ),
            SizedBox(
              height: 4.w,
            ),
            const Text(
              "MP/H",
              style: TextStyle(
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                  letterSpacing: -0.48,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffB1B3BB)),
            ),
          ],
        ),
      ),
    );
  }

  Widget tipWidget(description) {
    return Container(
      child: Row(
        children: [
          Image.asset(
            "assets/images/Rectangle.png",
            fit: BoxFit.cover,
            width: 3.w,
            height: 95.h,
            color: const Color(0xff65C955),
          ),
          SizedBox(
            width: 10.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Tip",
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    letterSpacing: -0.8,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff65C955)),
              ),
              SizedBox(
                height: 70,
                width: 130,
                child: Text(
                  // textAlign: TextAlign.center,
                  "$description",
                  // 'Don’t go out without'
                  // '\numbrella or raincoat'
                  // "\nRaining possibility 80%.go"
                  // "\nout with protection",
                  style: const TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                      letterSpacing: -0.8,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget hourlyWidget({List<Day>? daysList}) {
    return SizedBox(
      height: 154,
      child: ListView.builder(
        itemCount: daysList![0].hours!.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            //height: 144,
            width: 70,
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.only(right: 4),
            decoration: BoxDecoration(
              color: const Color(0xff141B34),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  "${DateFormat.jm().format(DateFormat("hh:mm:ss").parse("${daysList![0].hours![index].datetime}"))}",
                  style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                      letterSpacing: -0.5,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffffffff)),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Image.asset(
                  "assets/images/Mooncloud.png",
                  width: 32,
                  height: 32,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  "${daysList![0].hours![index].humidity}°",
                  style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                      letterSpacing: -0.38,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffffffff)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
