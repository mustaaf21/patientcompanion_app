import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:patientcompanion/navigation_bar/user_inputs.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
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
      body: Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: SingleChildScrollView(
          child:SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  Container(
                    child: Column(children: [
                      InkWell(
                          onTap: () {
                            AppSettings.openBluetoothSettings();
                         },
                         child: Padding(
                           padding: EdgeInsets.all( 20),
                           child: Row(
                             children: [

                              const SizedBox(width: 0),
                               Container( 
                                child: Text('Bluetooth on/off', style: TextStyle(color: Colors.black, fontSize: 20,
                                ),),),
                                const SizedBox(width: 140),
                                Container(
                                child: Icon(Icons.bluetooth, color: Colors.black, size: 30,),
                              ),
                             ],
                            ),
                          ),
                        ), 
                                              InkWell(
                          onTap: () {
                           Navigator.push(context,MaterialPageRoute(builder: (context) =>  useInput()),);
                         },
                         child: Padding(
                           padding: EdgeInsets.all( 20),
                           child: Row(
                             children: [

                              const SizedBox(width: 0),
                               Container( 
                                child: Text('Edit Personal Info', style: TextStyle(color: Colors.black, fontSize: 20,
                                ),),),
                                const SizedBox(width: 130),
                                Container(
                                child: Icon(Icons.edit, color: Colors.black, size: 30,),
                              ),
                             ],
                            ),
                          ),
                        ),
                    ]
                    ),
                  ),
                ]
                ),
            ),
          ) 
         ),
      ),
    );
  }
}