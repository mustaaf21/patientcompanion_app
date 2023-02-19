import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:patientcompanion/navigation_bar/user_inputs.dart';


class AlarmPage extends StatefulWidget {
  const AlarmPage({Key? key}) : super(key: key);

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title:Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          child: Image.asset('assets/images/img_1.png'),
          ),
          backgroundColor: const Color.fromRGBO(207, 245, 255, 1.0),
      ),
      body:SingleChildScrollView(
        child: Container(  
          ),
      ),
    );
  }
}