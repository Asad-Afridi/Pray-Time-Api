import 'dart:convert';

import 'package:http/http.dart';
class Network{
  Network({this.getUrl});
  var getUrl;
 Future<dynamic> getPrayerTime(dynamic getUrl) async{
    Response response= await get(Uri.parse(getUrl));
    String prayTime=response.body;
    return jsonDecode(prayTime);
  }

 Future<dynamic> getPrayerTimeByCityName(dynamic getUrl) async {
    Response response= await get(Uri.parse(getUrl));
    String prayTime=response.body;
    return jsonDecode(prayTime);
  }
  
}