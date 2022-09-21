import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pray_time_app/screens/main_screen.dart';
import 'package:pray_time_app/widgets/model.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getDataByPosition();
    getDataByCityName();
  }

  getDataByPosition() async {
    Model model = Model();
    var prayerTimeData = model.getLocationByPosition();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MainScreen(prayTime: prayerTimeData,)),
    );
  }

  getDataByCityName() async {
    Model model = Model();
    var prayTimeData = model.getLocationDataByCityName();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MainScreen(prayTime: prayTimeData,)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(flex: 2,),
          SpinKitFadingCircle(
            color: Colors.blueAccent,
            size: 100,
          ),
          Spacer(),
          Text(
            'Lets Check Pray Time',
            style: TextStyle(color: Colors.blue),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
