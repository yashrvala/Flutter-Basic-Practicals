import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: LoginPage(hintText: '',),
   );
  }
}
class LoginPage extends StatelessWidget{
  final String hintText;
  LoginPage({super.key, required this.hintText,
  });
  final usernameController =TextEditingController();
  final passwordController =TextEditingController();
  final mobileNumber=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Icon(Icons.app_registration_outlined,size: 100,),
              const SizedBox(height: 50),
              Text('REGISTRATION NOW!!',style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
              ),),
              const SizedBox(height: 20),
              TextField(
                controller: usernameController,
                obscureText: false,
                decoration:
                InputDecoration(
                    labelText:"Username",
                    enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade400)),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: hintText,
                    prefixIcon: Icon(Icons.account_circle),
                    hintStyle: TextStyle(color: Colors.grey[500])),),
              const SizedBox(height: 20),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration:
                InputDecoration(
                    labelText:"Password",
                    enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade400)),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: hintText,
                    prefixIcon: Icon(Icons.lock_outline),
                    hintStyle: TextStyle(color: Colors.grey[500])),),
              const SizedBox(height: 20),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration:
                InputDecoration(
                    labelText:"Confirm Password",
                    enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade400)),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: hintText,
                    prefixIcon: Icon(Icons.lock_outline),
                    hintStyle: TextStyle(color: Colors.grey[500])),),
              const SizedBox(height: 20),
              TextField(
                controller: mobileNumber,
                obscureText: false,
                decoration:
                InputDecoration(
                    labelText:"Phone Number",
                    enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade400)),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: hintText,
                    prefixIcon: Icon(Icons.phone),
                    hintStyle: TextStyle(color: Colors.grey[500])),),
              const SizedBox(height: 20),
              TextField(
                obscureText: false,
                decoration:
                InputDecoration(
                    labelText:"Email Id",
                    enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade400)),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: hintText,
                    prefixIcon: Icon(Icons.email_outlined),
                    hintStyle: TextStyle(color: Colors.grey[500])),),
              const SizedBox(height: 20),
              TextField(
                obscureText: false,
                decoration:
                InputDecoration(
                    labelText:"Date Of Birth",
                    enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade400)),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: hintText,
                    prefixIcon: Icon(Icons.date_range),
                    hintStyle: TextStyle(color: Colors.grey[500])),),
              const SizedBox(height: 25),

          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.symmetric(horizontal: 25.0),
            decoration: BoxDecoration(color: Colors.black,
                borderRadius:BorderRadius.circular(8) ),
            child: Center(
              child: Text('SUBMIT',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
            ),
          )

            ],),
        ),
      ),
    );
  }

}