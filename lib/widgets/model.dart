import 'package:flutter/material.dart';
import 'package:pray_time_app/widgets/location.dart';
import 'package:pray_time_app/widgets/network.dart';

class Model {
  Model({this.names});
 List<String>? names=[];


  Future<dynamic> getLocationDataByCityName() async {
    Network network= Network();
    var prayerTimeData= await network.getPrayerTimeByCityName('http://api.aladhan.com/v1/timingsByCity?city=${names![0]}&country=${names![1]}&method=8');
    return prayerTimeData;
  }


  Future<dynamic> getLocationByPosition() async {
    Location getLocation = Location();
    var location = await getLocation.getCurrentLocation();
    Network prayerTime = Network();
    var prayerTimeData = await prayerTime.getPrayerTime(
        'http://api.aladhan.com/v1/calendar?latitude=${location
            .latitude}&longitude=${location
            .longitude}&method=2&month=4&year=2017');
    return prayerTimeData;
  }
}