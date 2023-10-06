import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random= Random();
  int x=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(title:
        Center(child: Text('Lottery App',style: TextStyle(fontSize: 20,color: Colors.black),)),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Your winning number is 5",style: TextStyle(fontSize: 30,color: Colors.white),),
              
            ), 
            Container(
              height: 250,
              width: 300,

              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.4),
                  borderRadius: BorderRadius.circular(20),
              ),
              child:
              Padding(
                padding: const EdgeInsets.all(15.0),
                child:  x==5 ?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.done_all_sharp,color: Colors.blue,size: 35 ,),
                    Text('congratulation you have win the lottery , your number is $x ',textAlign: TextAlign.center,style:TextStyle(color: Colors.blueGrey),)
                  ],
                ) :
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.error,color: Colors.red,size: 35 ,),
                    Text('Best luck for next turn your number is 5 \n , try again ',textAlign: TextAlign.center,)
                  ],
                ),
              ),
            )
          ],

        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){

            x=random.nextInt(6);
            print(x);
            setState(() {

            });
          } ,
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}



