import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(hintText: ""),
    ); } }

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

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();
  final TextEditingController cnfPwdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
  void onSwitchToLoginPressed(){
  Navigator.pop(context);
  }
  return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
  body: Container(
  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 100.0),
  color: Colors.lightBlue,
  child: Column(
  mainAxisSize: MainAxisSize.max,
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
  Text("Join Us!",
  style: TextStyle(
  fontFamily: 'MeowScript',
  fontSize: 65,
  color: Colors.white)),
  TextField(
  controller: usernameController,
  cursorColor: Colors.white,
  decoration: InputDecoration(
  prefixIcon: Icon(Icons.person_outline),
  prefixIconColor: Colors.white,
  label: Text("First Name", style: TextStyle(color: Colors.white)),
  enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(
  color: Colors.white,
  style: BorderStyle.solid,
  width: 2.0)),
  focusedBorder: OutlineInputBorder(
  borderSide: BorderSide(
  color: Colors.white,
  style: BorderStyle.solid,
  width: 2.0)),
  ), ),
  TextField(
  controller: passwordController,
  cursorColor: Colors.white,
  decoration: InputDecoration(
  prefixIcon: Icon(Icons.person_outline),
  prefixIconColor: Colors.white,
  label: Text("Last Name", style: TextStyle(color: Colors.white)),
  enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(
  color: Colors.white,
  style: BorderStyle.solid,
  width: 2.0)),
  focusedBorder: OutlineInputBorder(
  borderSide: BorderSide(
  color: Colors.white,
  style: BorderStyle.solid,
  width: 2.0)),
  ), ),
  TextField(
  controller: emailController,
  cursorColor: Colors.white,
  cursorErrorColor: Colors.red,
  keyboardType: TextInputType.emailAddress,
  decoration: InputDecoration(
  prefixIcon: Icon(Icons.mail_outline),
  prefixIconColor: Colors.white,
  label: Text("Email", style: TextStyle(color: Colors.white)),
  enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(
  color: Colors.white,
  style: BorderStyle.solid,
  width: 2.0)),
  focusedBorder: OutlineInputBorder(
  borderSide: BorderSide(
  color: Colors.white,
  style: BorderStyle.solid,
  width: 2.0)),
  focusColor: Colors.white,
  hoverColor: Colors.white),
  ),
  TextField(
  controller: pwdController,
  cursorColor: Colors.white,
  obscureText: true,
  decoration: InputDecoration(
  prefixIcon: Icon(Icons.lock_outline),
  prefixIconColor: Colors.white,
  label:
  Text("Password", style: TextStyle(color: Colors.white)),
  enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(
  color: Colors.white,
  style: BorderStyle.solid,
  width: 2.0)),
  focusedBorder: OutlineInputBorder(
  borderSide: BorderSide(
  color: Colors.white,
  style: BorderStyle.solid,
  width: 2.0)),
  ),   ),
  TextField(
  controller: cnfPwdController,
  cursorColor: Colors.white,
  obscureText: true,
  decoration: InputDecoration(
  prefixIcon: Icon(Icons.lock_outline),
  prefixIconColor: Colors.white,
  label: Text("Confirm Password",
  style: TextStyle(color: Colors.white)),
  enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(
  color: Colors.white,
  style: BorderStyle.solid,
  width: 2.0)),
  focusedBorder: OutlineInputBorder(
  borderSide: BorderSide(
  color: Colors.white,
  style: BorderStyle.solid,
  width: 2.0)),
  ), ),
  ElevatedButton(
  onPressed: onSignUpPressed,
  style: ButtonStyle(
  foregroundColor: WidgetStatePropertyAll(Colors.lightBlue)),
  child: Text("Sign Up"), ),
  Row(
  mainAxisSize: MainAxisSize.min,
  children: [
  Text("Already a member of Backdrop?",
  style: TextStyle(color: Colors.white)),
  TextButton(
  onPressed: onSwitchToLoginPressed,
  child: Text("Log In",
  style: TextStyle(
  color: Colors.white,
  decoration: TextDecoration.underline,
  decorationColor: Colors.white)))
  ], ) ], ), ), ), ); }
  void onSignUpPressed() {
  print("First Name Received: ${usernameController.text}");
  print("Last Name Received: ${passwordController.text}");
  print("Email Received: ${emailController.text}");
  print("Password Received: ${pwdController.text}");
  print("Confirm Password Received: ${cnfPwdController.text}");
  }}
