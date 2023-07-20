import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:google_sign_in/google_sign_in.dart';
import 'package:patientcompanion/my_drawer_header.dart';
import 'package:patientcompanion/navigation_bar/alarm_page.dart';
import 'package:patientcompanion/navigation_bar/info_page.dart';
import 'package:patientcompanion/navigation_bar/dashboard_page.dart';
import 'package:patientcompanion/navigation_bar/info_page.dart';
import 'package:patientcompanion/components/round_button.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:patientcompanion/navigation_bar/user_inputs.dart';




class HomePage extends StatelessWidget {
  HomePage({super.key});
  


  void signUserOut() async {
  //  final GoogleSignIn googleSignIn = GoogleSignIn();
    await FirebaseAuth.instance.signOut();
  //  await googleSignIn.signOut();
  }

  final user = FirebaseAuth.instance.currentUser!;

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
      body: 
      SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                FloatingActionButton.large(
                       backgroundColor:  Colors.red,
                       onPressed: () async{
                        await FlutterPhoneDirectCaller.callNumber('add your phone number here ');
                       },
                       child: Icon(Icons.sos_rounded, size: 80, color: Colors.white,),
                       ),
                const SizedBox(height: 60),
                Container( 
                  child:Lottie.asset('assets/wheelchair.json',),
                ),
                const SizedBox(height: 40),
                FloatingActionButton.large(
                       backgroundColor:  Color.fromRGBO(207, 244, 255, 1.0),
                       onPressed: () {},
                       child: Icon(Icons.arrow_upward, size: 90, color: Colors.black,),
                       ),
              const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:   [
                    FloatingActionButton.large( backgroundColor:  const Color.fromRGBO(207, 245, 255, 1.0),
                       onPressed: () {},
                       child: Icon(Icons.arrow_back, size: 90, color: Colors.black),),
                    const SizedBox(width: 20), 
                    FloatingActionButton.large( backgroundColor:  const Color.fromRGBO(207, 245, 255, 1.0),
                       onPressed: () {},
                       child: Icon(Icons.stop_circle_rounded, size: 90, color: Colors.black),),
                    const SizedBox(width: 20),
                    FloatingActionButton.large( backgroundColor:  const Color.fromRGBO(207, 245, 255, 1.0),
                       onPressed: () {},
                       child: Icon(Icons.arrow_forward, size: 90, color: Colors.black),),
                  ],
                ),
              const SizedBox(height: 20),
                FloatingActionButton.large(
                       backgroundColor:  const Color.fromRGBO(207, 245, 255, 1.0),
                       onPressed: () {},
                       child: Icon(Icons.arrow_downward, size: 90, color: Colors.black,),
                       ),
              ]
            )
          ,)
           ),
      ),



      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                
                
                
                
                
                
                
                
                ////NAVIGATION BAR
                
                Container(
                  padding: EdgeInsets.only(top: 15,),
                    child: Column(
                    // shows the list of menu drawer
                      children: [

                    // alarm clock
                        InkWell(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) =>  AlarmPage()),);
                            },
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                                child: Row(
                                  children: [
                                  Expanded(
                                    child: Icon(Icons.alarm_outlined, size: 20, color: Colors.black,),),
                                  Expanded(flex: 3,
                                    child: Text('Medicine Reminder', style: TextStyle(color: Colors.black, fontSize: 16,),),),
                                ],
                            ),
                        ),
                    ),
                  
                      //know your companion page 
                       InkWell(
                         onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) =>  infoPage()),);
                        },
                         child: Padding(
                           padding: EdgeInsets.all(15.0),
                           child: Row(
                             children: [
                               Expanded(
                                 child: Icon(Icons.question_mark_outlined, size: 20, color: Colors.black,),),
                               Expanded(flex: 3,
                                 child: Text('Know your companion', style: TextStyle(color: Colors.black, fontSize: 16,),),),
                            ],
                       ),
                    ),
                ),

                     // settings page 
                      InkWell(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) =>  DashboardPage()),);
                         },
                         child: Padding(
                           padding: EdgeInsets.all(15.0),
                           child: Row(
                             children: [
                               Expanded( child: Icon(Icons.settings_applications_sharp, size: 20, color: Colors.black,),),
                               Expanded(flex: 3,
                                 child: Text('Settings', style: TextStyle(color: Colors.black, fontSize: 16,),),),
                             ],
                            ),
                          ),
                        ),

                      const SizedBox(height: 380),

                      // user sign out 
                        InkWell(
                          onTap: () { signUserOut();
                        },
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Icon(Icons.logout_outlined, size: 20, color: Colors.black,),),
                                  Expanded(flex: 3,
                                    child: Text('Logout', style: TextStyle(color: Colors.black, fontSize: 16,),),),
                              ],
                          ),
                        ),
                    ),
                ],
            ),
          ),
            ],
          ),
        ),
      ),
    ),
    );
  }

}








