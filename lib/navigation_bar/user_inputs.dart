import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:patientcompanion/homePage.dart';
import 'package:patientcompanion/my_drawer_header.dart';

String userpost ='';
class useInput extends StatefulWidget {
  const useInput({super.key});

  @override
  State<useInput> createState() => _useInputState();
}

class _useInputState extends State<useInput> {

  TextEditingController _textconotroller = new TextEditingController();
  TextEditingController _name = new TextEditingController();
  TextEditingController _dignosis  = new TextEditingController();
  TextEditingController _age  = new TextEditingController();
  


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

      body: Padding(padding: const EdgeInsets.all(15),
       child: SingleChildScrollView(
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

          Center(
            child: Container(
              child: Text('    Tell Us About You ', style: TextStyle(fontSize: 20), ),
            ),
          ),

          const SizedBox(height: 20,),
          TextField(
            controller: _textconotroller,
            decoration:  InputDecoration(
              hintText: 'Enter SOS Phone Number',
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(onPressed: (){
                _textconotroller.clear();
              }, icon: Icon(Icons.clear),),
            ),
          ),
       
           const SizedBox(height: 20,),
       
            TextField(
            controller: _name,
            decoration:  InputDecoration(
              hintText: 'Enter Your Name',
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(onPressed: (){
                _name.clear();
              }, icon: Icon(Icons.clear),),
            ),
          ),
       
          const SizedBox(height: 20,),

            TextField(
            controller: _age,
            decoration:  InputDecoration(
              hintText: 'Enter Your Age',
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(onPressed: (){
                _age.clear();
              }, icon: Icon(Icons.clear),),
            ),
          ),
       
          const SizedBox(height: 20,),
       
          TextField(
            controller: _dignosis,
            decoration:  InputDecoration(
              hintText: 'Enter About Your Diagnosis.',
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(onPressed: (){
                _dignosis.clear();
              }, icon: Icon(Icons.clear),),
            ),
          ),
          const SizedBox(height: 20,),
       
          Container(
            height: 58,
            decoration: BoxDecoration(border: Border.all(), borderRadius: BorderRadius.all(Radius.circular(2))),
            child:Row(
            children: [
              Text('   Upload Image ', ),
              const SizedBox(width: 110,),
            ElevatedButton.icon(onPressed: (){
            }, icon: Icon(Icons.upload_file), label: Text('Upload'), )
            ],
          ),
          ),
       
          
       
             const SizedBox(height: 210,),
       
             ElevatedButton.icon(onPressed: (){
             }, icon: Icon(Icons.save), label: Text('Save'), )
             ],
             ),
       ),
      )
    );
  }
}
