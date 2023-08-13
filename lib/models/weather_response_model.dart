// To parse this JSON data, do
//
//     final getWeatherResponseModel = getWeatherResponseModelFromMap(jsonString);

import 'dart:convert';

GetWeatherResponseModel getWeatherResponseModelFromMap(String str) =>
    GetWeatherResponseModel.fromMap(json.decode(str));

String getWeatherResponseModelToMap(GetWeatherResponseModel data) =>
    json.encode(data.toMap());

class GetWeatherResponseModel {
  int? queryCost;
  double? latitude;
  double? longitude;
  String? resolvedAddress;
  String? address;
  String? timezone;
  double? tzoffset;
  String? description;
  List<Day>? days;
  List<dynamic>? alerts;
  Stations? stations;
  CurrentConditions? currentConditions;

  GetWeatherResponseModel({
    this.queryCost,
    this.latitude,
    this.longitude,
    this.resolvedAddress,
    this.address,
    this.timezone,
    this.tzoffset,
    this.description,
    this.days,
    this.alerts,
    this.stations,
    this.currentConditions,
  });

  factory GetWeatherResponseModel.fromMap(Map<String, dynamic> json) =>
      GetWeatherResponseModel(
        queryCost: json["queryCost"],
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
        resolvedAddress: json["resolvedAddress"],
        address: json["address"],
        timezone: json["timezone"],
        tzoffset: json["tzoffset"],
        description: json["description"],
        days: List<Day>.from(json["days"].map((x) => Day.fromMap(x))),
        alerts: List<dynamic>.from(json["alerts"].map((x) => x)),
        stations: Stations.fromMap(json["stations"]),
        currentConditions: CurrentConditions.fromMap(json["currentConditions"]),
      );

  Map<String, dynamic> toMap() => {
        "queryCost": queryCost,
        "latitude": latitude,
        "longitude": longitude,
        "resolvedAddress": resolvedAddress,
        "address": address,
        "timezone": timezone,
        "tzoffset": tzoffset,
        "description": description,
        "days": List<dynamic>.from(days!.map((x) => x.toMap())),
        "alerts": List<dynamic>.from(alerts!.map((x) => x)),
        "stations": stations!.toMap(),
        "currentConditions": currentConditions!.toMap(),
      };
}

class CurrentConditions {
  int? datetimeEpoch;
  String? datetime;
  double? temp;
  double? feelslike;
  double? humidity;
  double? dew;
  double? precip;
  double? precipprob;
  double? snow;
  double? snowdepth;
  List<String>? preciptype;
  dynamic? windgust;
  double? windspeed;
  double? winddir;
  double? pressure;
  double? visibility;
  double? cloudcover;
  double? solarradiation;
  double? solarenergy;
  double? uvindex;
  String? conditions;
  String? icon;
  List<String>? stations;
  String? source;
  String? sunrise;
  int? sunriseEpoch;
  String? sunset;
  int? sunsetEpoch;
  double? moonphase;

  CurrentConditions({
    this.datetime,
    this.datetimeEpoch,
    this.temp,
    this.feelslike,
    this.humidity,
    this.dew,
    this.precip,
    this.precipprob,
    this.snow,
    this.snowdepth,
    this.preciptype,
    this.windgust,
    this.windspeed,
    this.winddir,
    this.pressure,
    this.visibility,
    this.cloudcover,
    this.solarradiation,
    this.solarenergy,
    this.uvindex,
    this.conditions,
    this.icon,
    this.stations,
    this.source,
    this.sunrise,
    this.sunriseEpoch,
    this.sunset,
    this.sunsetEpoch,
    this.moonphase,
  });

  factory CurrentConditions.fromMap(Map<String, dynamic> json) =>
      CurrentConditions(
        datetime: json["datetime"],
        datetimeEpoch: json["datetimeEpoch"],
        temp: json["temp"].toDouble(),
        feelslike: json["feelslike"].toDouble(),
        humidity: json["humidity"].toDouble(),
        dew: json["dew"],
        precip: json["precip"].toDouble(),
        precipprob: json["precipprob"].toDouble(),
        snow: json["snow"],
        snowdepth: json["snowdepth"],
        preciptype: List<String>.from(json["preciptype"].map((x) => x)),
        windgust: json["windgust"],
        windspeed: json["windspeed"].toDouble(),
        winddir: json["winddir"],
        pressure: json["pressure"],
        visibility: json["visibility"],
        cloudcover: json["cloudcover"].toDouble(),
        solarradiation: json["solarradiation"],
        solarenergy: json["solarenergy"],
        uvindex: json["uvindex"],
        conditions: json["conditions"],
        icon: json["icon"],
        stations: List<String>.from(json["stations"].map((x) => x)),
        source: json["source"],
        sunrise: json["sunrise"],
        sunriseEpoch: json["sunriseEpoch"],
        sunset: json["sunset"],
        sunsetEpoch: json["sunsetEpoch"],
        moonphase: json["moonphase"].toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "datetime": datetime,
        "datetimeEpoch": datetimeEpoch,
        "temp": temp,
        "feelslike": feelslike,
        "humidity": humidity,
        "dew": dew,
        "precip": precip,
        "precipprob": precipprob,
        "snow": snow,
        "snowdepth": snowdepth,
        "preciptype": List<dynamic>.from(preciptype!.map((x) => x)),
        "windgust": windgust,
        "windspeed": windspeed,
        "winddir": winddir,
        "pressure": pressure,
        "visibility": visibility,
        "cloudcover": cloudcover,
        "solarradiation": solarradiation,
        "solarenergy": solarenergy,
        "uvindex": uvindex,
        "conditions": conditions,
        "icon": icon,
        "stations": List<dynamic>.from(stations!.map((x) => x)),
        "source": source,
        "sunrise": sunrise,
        "sunriseEpoch": sunriseEpoch,
        "sunset": sunset,
        "sunsetEpoch": sunsetEpoch,
        "moonphase": moonphase,
      };
}

class Day {
  DateTime? datetime;
  int? datetimeEpoch;
  double? tempmax;
  double? tempmin;
  double? temp;
  double? feelslikemax;
  double? feelslikemin;
  double? feelslike;
  double? dew;
  double? humidity;
  double? precip;
  double? precipprob;
  double? precipcover;
  List<String>? preciptype;
  double? snow;
  double? snowdepth;
  double? windgust;
  double? windspeed;
  double? winddir;
  double? pressure;
  double? cloudcover;
  double? visibility;
  double? solarradiation;
  double? solarenergy;
  double? uvindex;
  double? severerisk;
  String? sunrise;
  int? sunriseEpoch;
  String? sunset;
  int? sunsetEpoch;
  double? moonphase;
  String? conditions;
  String? description;
  String? icon;
  // List<String>? stations;
  String? source;
  List<Hour>? hours;

  Day({
    this.datetime,
    this.datetimeEpoch,
    this.tempmax,
    this.tempmin,
    this.temp,
    this.feelslikemax,
    this.feelslikemin,
    this.feelslike,
    this.dew,
    this.humidity,
    this.precip,
    this.precipprob,
    this.precipcover,
    // this.preciptype,
    this.snow,
    this.snowdepth,
    this.windgust,
    this.windspeed,
    this.winddir,
    this.pressure,
    this.cloudcover,
    this.visibility,
    this.solarradiation,
    this.solarenergy,
    this.uvindex,
    this.severerisk,
    this.sunrise,
    this.sunriseEpoch,
    this.sunset,
    this.sunsetEpoch,
    this.moonphase,
    this.conditions,
    this.description,
    this.icon,
    //  this.stations,
    this.source,
    this.hours,
  });

  factory Day.fromMap(Map<String, dynamic> json) => Day(
        datetime: DateTime.parse(json["datetime"]),
        datetimeEpoch: json["datetimeEpoch"],
        tempmax: json["tempmax"].toDouble(),
        tempmin: json["tempmin"].toDouble(),
        temp: json["temp"].toDouble(),
        feelslikemax: json["feelslikemax"].toDouble(),
        feelslikemin: json["feelslikemin"].toDouble(),
        feelslike: json["feelslike"].toDouble(),
        dew: json["dew"].toDouble(),
        humidity: json["humidity"].toDouble(),
        precip: json["precip"].toDouble(),
        precipprob: json["precipprob"].toDouble(),
        precipcover: json["precipcover"].toDouble(),
        //  preciptype: List<String>.from(json["preciptype"].map((x) => x)),
        snow: json["snow"],
        snowdepth: json["snowdepth"],
        windgust: json["windgust"].toDouble(),
        windspeed: json["windspeed"].toDouble(),
        winddir: json["winddir"].toDouble(),
        pressure: json["pressure"].toDouble(),
        cloudcover: json["cloudcover"].toDouble(),
        visibility: json["visibility"].toDouble(),
        solarradiation: json["solarradiation"].toDouble(),
        solarenergy: json["solarenergy"].toDouble(),
        uvindex: json["uvindex"],
        severerisk: json["severerisk"],
        sunrise: json["sunrise"],
        sunriseEpoch: json["sunriseEpoch"],
        sunset: json["sunset"],
        sunsetEpoch: json["sunsetEpoch"],
        moonphase: json["moonphase"].toDouble(),
        conditions: json["conditions"],
        description: json["description"],
        icon: json["icon"],
        // stations: List<String>.from(json["stations"].map((x) => x)),
        source: json["source"],
        hours: List<Hour>.from(json["hours"].map((x) => Hour.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "datetime":
            "${datetime!.year.toString().padLeft(4, '0')}-${datetime!.month.toString().padLeft(2, '0')}-${datetime!?.day.toString().padLeft(2, '0')}",
        "datetimeEpoch": datetimeEpoch,
        "tempmax": tempmax,
        "tempmin": tempmin,
        "temp": temp,
        "feelslikemax": feelslikemax,
        "feelslikemin": feelslikemin,
        "feelslike": feelslike,
        "dew": dew,
        "humidity": humidity,
        "precip": precip,
        "precipprob": precipprob,
        "precipcover": precipcover,
        // "preciptype": List<dynamic>.from(preciptype!.map((x) => x)),
        "snow": snow,
        "snowdepth": snowdepth,
        "windgust": windgust,
        "windspeed": windspeed,
        "winddir": winddir,
        "pressure": pressure,
        "cloudcover": cloudcover,
        "visibility": visibility,
        "solarradiation": solarradiation,
        "solarenergy": solarenergy,
        "uvindex": uvindex,
        "severerisk": severerisk,
        "sunrise": sunrise,
        "sunriseEpoch": sunriseEpoch,
        "sunset": sunset,
        "sunsetEpoch": sunsetEpoch,
        "moonphase": moonphase,
        "conditions": conditions,
        "description": description,
        "icon": icon,
        //"stations": List<dynamic>.from(stations!.map((x) => x)),
        "source": source,
        "hours": List<dynamic>.from(hours!.map((x) => x.toMap())),
      };
}

class Hour {
  String? datetime;
  int? datetimeEpoch;
  double? temp;
  double? feelslike;
  double? humidity;
  double? dew;
  double? precip;
  double? precipprob;
  double? snow;
  double? snowdepth;
  // List<String>? preciptype;
  double? windgust;
  double? windspeed;
  double? winddir;
  double? pressure;
  double? visibility;
  double? cloudcover;
  double? solarradiation;
  double? solarenergy;
  double? uvindex;
  double? severerisk;
  String? conditions;
  String? icon;
  // List<String>? stations;
  String? source;

  Hour({
    this.datetime,
    this.datetimeEpoch,
    this.temp,
    this.feelslike,
    this.humidity,
    this.dew,
    this.precip,
    this.precipprob,
    this.snow,
    this.snowdepth,
    //  this.preciptype,
    this.windgust,
    this.windspeed,
    this.winddir,
    this.pressure,
    this.visibility,
    this.cloudcover,
    this.solarradiation,
    this.solarenergy,
    this.uvindex,
    this.severerisk,
    this.conditions,
    this.icon,
    // this.stations,
    this.source,
  });

  factory Hour.fromMap(Map<String, dynamic> json) => Hour(
        datetime: json["datetime"],
        datetimeEpoch: json["datetimeEpoch"],
        temp: json["temp"].toDouble(),
        feelslike: json["feelslike"].toDouble(),
        humidity: json["humidity"].toDouble(),
        dew: json["dew"].toDouble(),
        precip: json["precip"].toDouble(),
        precipprob: json["precipprob"].toDouble(),
        snow: json["snow"],
        snowdepth: json["snowdepth"],
        // preciptype: List<String>.from(json["preciptype"].map((x) => x)),
        windgust: json["windgust"].toDouble(),
        windspeed: json["windspeed"].toDouble(),
        winddir: json["winddir"].toDouble(),
        pressure: json["pressure"].toDouble(),
        visibility: json["visibility"].toDouble(),
        cloudcover: json["cloudcover"].toDouble(),
        solarradiation: json["solarradiation"].toDouble(),
        solarenergy: json["solarenergy"].toDouble(),
        uvindex: json["uvindex"],
        severerisk: json["severerisk"],
        conditions: json["conditions"],
        icon: json["icon"],
        // stations: List<String>.from(json["stations"].map((x) => x)),
        source: json["source"],
      );
//
  Map<String, dynamic> toMap() => {
        "datetime": datetime,
        "datetimeEpoch": datetimeEpoch,
        "temp": temp,
        "feelslike": feelslike,
        "humidity": humidity,
        "dew": dew,
        "precip": precip,
        "precipprob": precipprob,
        "snow": snow,
        "snowdepth": snowdepth,
        // "preciptype": List<String>.from(preciptype!.map((x) => x)),
        "windgust": windgust,
        "windspeed": windspeed,
        "winddir": winddir,
        "pressure": pressure,
        "visibility": visibility,
        "cloudcover": cloudcover,
        "solarradiation": solarradiation,
        "solarenergy": solarenergy,
        "uvindex": uvindex,
        "severerisk": severerisk,
        "conditions": conditions,
        "icon": icon,
        // "stations": List<String>.from(stations!.map((x) => x)),
        "source": source,
      };
}

class Stations {
  Veat? vghs;
  Veat? veat;

  Stations({
    this.vghs,
    this.veat,
  });

  factory Stations.fromMap(Map<String, dynamic> json) => Stations(
        vghs: Veat.fromMap(json["VGHS"]),
        veat: Veat.fromMap(json["VEAT"]),
      );

  Map<String, dynamic> toMap() => {
        "VGHS": vghs!.toMap(),
        "VEAT": veat!.toMap(),
      };
}

class Veat {
  double? distance;
  double? latitude;
  double? longitude;
  int? useCount;
  String? id;
  String? name;
  int? quality;
  double? contribution;

  Veat({
    this.distance,
    this.latitude,
    this.longitude,
    this.useCount,
    this.id,
    this.name,
    this.quality,
    this.contribution,
  });

  factory Veat.fromMap(Map<String, dynamic> json) => Veat(
        distance: json["distance"],
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
        useCount: json["useCount"],
        id: json["id"],
        name: json["name"],
        quality: json["quality"],
        contribution: json["contribution"],
      );

  Map<String, dynamic> toMap() => {
        "distance": distance,
        "latitude": latitude,
        "longitude": longitude,
        "useCount": useCount,
        "id": id,
        "name": name,
        "quality": quality,
        "contribution": contribution,
      };
}
