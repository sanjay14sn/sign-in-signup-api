import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
void main() => runApp(MaterialApp(
  home: Loginpage(),
));

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _MyAppState();
}

class _MyAppState extends State<Loginpage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final url=
      "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyAKz3l784jmdBHJjaMNDAa1KH2lNmlnG0Y";

  Future<void> Signup() async {
  final email = _emailController.text;
  final password = _passwordController.text;
  print(email);
  print(password);
  final res = await http.post
    (Uri.parse(url), body: json.encode(
    { 'email':email,
      'password':password,
      'returnSecureToken':true,}),
    headers: {'Content-Type': 'application/json'},
  );
  print(res.statusCode);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:EdgeInsets.all(40.0),
        width:1000,
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
              "1000_F_121538900_hKCaC9IQXcqQAm3Wr0uLx83nhtAwYbd6.jpg",
              height: 100.0,
            ),
            SizedBox(height:50.0,),
            TextFormField(
              controller:_emailController,
              decoration: InputDecoration(
                icon: Icon(Icons.mail,color:Colors.white,),
                hintText:"Email",
                hintStyle:TextStyle(color:Colors.black),


              ),
            ),
            SizedBox(height: 50.0),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                icon: Icon(Icons.lock_outline, color: Colors.white), // Changed to lock_outline
                hintText: "PASSWORD",
                hintStyle: TextStyle(color: Colors.black),
              ),
              obscureText: true,
            ),
            SizedBox(height: 50.0),
            ElevatedButton(onPressed:Signup,
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.tealAccent[800],
                padding:EdgeInsets.symmetric(horizontal:50,vertical: 15),),
              child:Text(
                'Sign Up',style:TextStyle(color:Colors.black,fontSize:17),
              ),

            ),


          ],
        ),
      ),
    );
  }
}