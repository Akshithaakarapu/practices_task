import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:practices_screen/login.dart';

import 'widget/studentlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage( ),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      //appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child: Column( 
              children: [
                SizedBox(height: 20,),
                Text('Welcome Back',style: TextStyle(color: Color.fromARGB(255, 8, 8, 8),fontSize: 28,fontWeight: FontWeight.bold)),
                SizedBox(height: 15,),
                 Column(
                  children: [
                    TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person,color: Color.fromARGB(255, 5, 5, 5),),
                    labelText: 'name',
                    border: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: 'Enter name',
                    
                  ),
                ),
                SizedBox(height: 25,),
                TextField(
                  //obscureText: true,
                  decoration: InputDecoration(
                    
                    prefixIcon: Icon(Icons.phone_iphone,color: Color.fromARGB(255, 5, 5, 5),),
                    labelText: 'phone number',
                    border: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: 'Enter number',
                    
                  ),
                ),
               SizedBox(height: 20,),
                   InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                        return Loginpage();
                       }));
                    },
                     child: Container(
                                     alignment: Alignment.center,
                                     width:336 ,
                                     height: 56,
                                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                     color: Color.fromARGB(255, 8, 8, 8)
                                     ),
                                     child: Text('LOGIN',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 18,fontWeight: FontWeight.bold),
                                 ),
                                   ),
                   ),
                  ],
                 ),
          
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}
