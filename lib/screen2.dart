// ignore_for_file: file_names, prefer_const_constructors_in_immutables

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skripsi_perkembangan/component/commonPadding.dart';
import 'package:skripsi_perkembangan/component/genButton.dart';


import 'component/genColor.dart';
import 'component/genPreferrence.dart';

class Screen2 extends StatefulWidget {
  Screen2({Key key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2>
    with TickerProviderStateMixin {
  var opacity = 0.0;
  String buildNumber = "";

  @override
  void initState() {
    super.initState();

  }


  @override
  dispose() {
    super.dispose();
  }


  cekLogin() async {
  // await setPrefferenceToken('asd');
  //    await setPrefferenceToken('initoken');

     // await logout();



//    return
//    if (log == null){
//      return Navigator.pushReplacementNamed(context, '/login');
//    }
  }




  bool loaded = false;
  @override
  Widget build(BuildContext context) {



    if(!loaded){

      loaded = true;
    }

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: CommonPadding(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'asset/checklist1.png',
                  width: 200,
                  fit: BoxFit.fitWidth,
                ),
                // AnimatedOpacity(
                //   curve: Curves.easeIn,
                //   duration: Duration(milliseconds: 1000),
                //   opacity: opacity,
                //   child:
                //
                // ),
                SizedBox(height: 50,),
                Text("Informasi Berbentuk List", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                SizedBox(height: 20,),
                Container(width: 230,child: Text("Berisi informasi proses pembangunan property secara teratur dan rapi", style: TextStyle(color: Colors.black54, fontSize: 16), textAlign: TextAlign.center)),
                SizedBox(height: 30,),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(height: 5, width: 5, color: Colors.grey,),
                    SizedBox(width: 5,),
                    Container(height: 5, width: 15, color: GenColor.primaryColor,),
                    SizedBox(width: 5,),
                    Container(height: 5, width: 5, color: Colors.grey,),
                  ],),
                SizedBox(height: 40,),
                GenButton(text: "Berikutnya", ontap: () {
                  Navigator.pushNamed(context, "screen3");
                },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
