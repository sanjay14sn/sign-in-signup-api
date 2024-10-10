import 'package:flutter/material.dart';
import 'package:untitled7/widgets/HomeAppBar.dart';

void main() => runApp(MaterialApp(
  home: Loginpage(),
));

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _MyAppState();
}

class _MyAppState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:EdgeInsets.all(40.0),
        width:double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Colors.purpleAccent[800] ?? Colors.purple,  // Dark yellow
              Colors.purpleAccent[400]!,
              Colors.purpleAccent[200]!,
              Colors.purpleAccent[100]!
              // Lighter yellow
            ],
          ),
        ),
        child:new Column(
          children:<Widget> [
            Image.asset(
              "assect/logo-black(1).png",
              height: 100.0,
            ),
            SizedBox(height:50.0,),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.lock,color:Colors.white,),
                hintText:"USER NAME",
                hintStyle:TextStyle(color:Colors.white),


              ),
            ),
            SizedBox(height: 50.0),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.lock_outline, color: Colors.white), // Changed to lock_outline
                hintText: "PASSWORD",
                hintStyle: TextStyle(color: Colors.white),
              ),
              obscureText: true,
            ),
            SizedBox(height: 50.0),
            ElevatedButton(onPressed: (){print("done");},
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.tealAccent[800],
                padding:EdgeInsets.symmetric(horizontal:50,vertical: 15),),
              child:Text(
                'LOGIN',style:TextStyle(color:Colors.black,fontSize:17),
              ),

            ),
            SizedBox(height: 20.0),
            ElevatedButton(onPressed: (){print("done");},

              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.tealAccent[800],
                padding:EdgeInsets.symmetric(horizontal:50,vertical: 15),),
              child:Text(
                'FORGET PASSWORD',style:TextStyle(color:Colors.black,fontSize:17),
              ),

            ),

          ],
        ),
      ),
    );
  }
}