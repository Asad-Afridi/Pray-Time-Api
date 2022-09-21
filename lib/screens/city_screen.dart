// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CityScreen extends StatelessWidget {
   CityScreen({Key? key}) : super(key: key);
  List<String> dataByNames=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints:  BoxConstraints.expand(),
        decoration:  BoxDecoration(
          image:  DecorationImage(
              image: AssetImage('images/city1.jpg'), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon:  Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black26,
                    ))),
            Container(
              margin:  EdgeInsets.only(top: 60),
              width: 300,
              color: Colors.black26,
              child:  TextField(
                onChanged: (value){
                  dataByNames[0]=value;
                },
                decoration:   InputDecoration(
                    hintText: 'Enter City Name',
                    hintStyle: TextStyle(color: Colors.white60),
                    prefixIcon:  Icon(
                      Icons.search,
                      color: Colors.white60,
                    ),
                    border:  OutlineInputBorder(
                        borderSide:  BorderSide(color: Colors.black26))),
                style:  TextStyle(color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 60),
              width: 300,
              color: Colors.black26,
              child:  TextField(
                onChanged: (value){
                  dataByNames[1]=value;
                },
                decoration:   InputDecoration(
                    hintText: 'Enter Country Name',
                    hintStyle: TextStyle(color: Colors.white60),
                    prefixIcon:  Icon(
                      Icons.search,
                      color: Colors.white60,
                    ),
                    border:  OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black26))),
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 60),
              color: Colors.black26,
              child: TextButton(
                style: ButtonStyle(
                ),
                  onPressed: () {
                  Navigator.of(context).pop(dataByNames);
                  },
                  child: Text(
                    'Get Data',
                    style: TextStyle(color: Colors.white60),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
