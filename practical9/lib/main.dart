import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Whatsapp Clone"),backgroundColor: Colors.green,),
        body: ListView(
            children: [
              ListTile(title: Text("Yash Vala"),subtitle: Row(children: [
                Icon(Icons.image,size: 18,),Text(" Photo")
              ],)  ,leading:CircleAvatar(backgroundImage: AssetImage('lib/Assets/WhatsApp Image 2025-03-20 at 12.01.52_0e92c15a.jpg'),)),
              ListTile(title: Text("Harsh Shirsath"),subtitle: Text("how are you") , leading:CircleAvatar(backgroundImage: AssetImage('lib/Assets/Screenshot 2025-03-20 115901.png'),) ),
              ListTile(title: Text("Prem Kamothi"),subtitle: Text("hello") , leading:CircleAvatar(backgroundImage: AssetImage('lib/Assets/Screenshot 2025-03-20 115926.png'),),),
              ListTile(title: Text("Het Dalsaniya"),subtitle: Text("byy") , leading:CircleAvatar(backgroundImage: AssetImage('lib/Assets/Screenshot 2025-03-20 115952.png'),),),
            ]
        ),
      ),
    );
  }
}
