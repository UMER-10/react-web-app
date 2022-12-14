import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fyp/login.dart';

class signupScreen extends StatefulWidget {
  const signupScreen({super.key});

  @override
  State<signupScreen> createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Sign Up'),centerTitle: true,
        ),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      TextFormField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Colors.black
        ),
      decoration: const InputDecoration(
      border: UnderlineInputBorder(),
      prefixIcon: Icon(
        Icons.email,
        color: Colors.black,
      ),
      labelText: 'Enter your email',
      

      

  ),
      ),
      SizedBox(height: 40,),
  Center(
      child: TextFormField(
      obscureText:true
    ,
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
           prefixIcon: Icon(
        Icons.lock,
        color: Colors.black,
      ),
          labelText: 'Enter Password',
        ),
      ),
  ),
  
  SizedBox(height: 40,),
  ElevatedButton(onPressed: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => loginScreen()));
  }, child:Text('Sign Up'))
      


      ],),
    ),
    );
  }
}