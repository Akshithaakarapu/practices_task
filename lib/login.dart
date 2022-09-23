import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:practices_screen/main.dart';

import 'widget/studentlist.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({ Key? key }) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {

Studentlist? list;
bool _loading=false;

void data() async{
  try{
    Response response= await Dio().get("https://datausa.io/api/data?drilldowns=Nation&measures=Population");
    setState(() {
      list=studentlistFromJson(jsonEncode(response.data));
      print("${response.data}");
    });
  }
  catch(e){
    setState(() {
      
    });
    print(e);
  }
}
 @override
  void initState() {
    // TODO: implement initState
    data();
  }











  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Column(
        children: [
          list==null?CircularProgressIndicator():
           Container(
                    height: 640,
                    child: GridView.builder(
              itemCount: list!.source!.length,
              shrinkWrap: true,           
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( 
                        childAspectRatio: 5/7,
                        crossAxisCount: 2,
                        crossAxisSpacing: 12.0,
                        mainAxisSpacing: 14.0, 
                      ),
                      physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Text(" list count:${list?.data}"),
                    Text("iteam name:${list?.source![index].name}"),
                 // Text("iteam name:${list?.entries![index].link}"),

                    ],
                );
              }
          ),)
          ]
          ),

        
      
    );
  }
}