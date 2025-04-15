import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("PRA4")
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textDirection:TextDirection.ltr ,
                  children: [
                    Icon(Icons.account_circle,size: 50.0),
                    Text("Home",style: TextStyle(color: Colors.blue,fontSize: 25)),
                    Text("About",style: TextStyle(color: Colors.blue,fontSize: 25)),
                    Text("More",style: TextStyle(color: Colors.blue,fontSize: 25)),
                  ],

              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: RichText(text: TextSpan(text:"welcome ",style: TextStyle(color: Colors.brown,fontSize: 25),children: [TextSpan(text: "to my app devloper",style:TextStyle(color: Colors.deepOrange,fontSize: 25))])),
              )],
          ),
        ),
        ),
      ),

  );
}
