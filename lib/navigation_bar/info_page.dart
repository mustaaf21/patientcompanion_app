import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class infoPage extends StatefulWidget {
  const infoPage({super.key});

  @override
  State<infoPage> createState() => _infoPageState();
}

class _infoPageState extends State<infoPage> {
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
                mainAxisAlignment: MainAxisAlignment.start, 
                children: [
                  Container(
                    
                    child: Column(children: [
                      InkWell(

                         child: Padding(
                           padding: EdgeInsets.all(15.0),
                           child: Column(
                             children: [
                              const SizedBox(height: 40),
                              Container(
                                
                                height: 60,
                                width: 330,
                                decoration: BoxDecoration(border: Border.all(),color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(30)),),
                                
                                child:Padding(padding: EdgeInsets.all(13),
                                child: Text('    KNOW YOUR COMPANION  ',
                                 style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold
                                 ),),                                
                                )  
                                 ),
                                const SizedBox(height: 40), 
                               Container(
                                
                                height: 800,
                                width: 330,
                                decoration: BoxDecoration(border: Border.all(),color: Colors.grey[400], borderRadius: BorderRadius.all(Radius.circular(30)),),
                                
                                child:Padding(padding: EdgeInsets.all(13),
                                child: Text(':Call it your companion and not a wheel chair, thats what we provive you with a sense of opportunity and confidence to grow and understand the your own powers with are beyond your disability.                                                :We are here for your assistance 24x7 so you dont feel lonely and helpless.                       :This document contains simple info on how to use the patient companion.                         >> You can control the wheelchair manually as well as using this app              >> The MANUAL controls are placed on the handle of the chair also called as the joystick.                                      >> The APP controls include a virtual joystick which are very simply to use.                                             >> Other features include a medicine reminder so you or your loved one never forget when to take the medice.                                          >> This app is designed keeping in mind the people using it and hence the design is kept minimalistic and simple.                                >> Apart from this we have also included a wetness sensor to indicate if the patient has unfortunately wet the seat which is a common problem faced.                                                             >> The SOS feature is one of the features which can act as a boon in times of emergency, where you can directly call your loved ones with one click.                                                        >> Now you are all set to rock the stage with your companion which will never let you down!!! ',
                                 style: TextStyle(color: Colors.black, fontSize: 18,
                                 fontStyle: FontStyle.italic),),                                
                                )  
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