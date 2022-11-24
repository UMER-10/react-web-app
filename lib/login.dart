import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fyp/createprofile.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Login'),centerTitle: true,),
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      TextFormField(
  decoration: const InputDecoration(
      border: UnderlineInputBorder(),
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
          labelText: 'Enter Password',
        ),
      ),
  ),
  SizedBox(height: 40,),
  ElevatedButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => profileScreen()));
  }, child:Text('Login'))
      


      ],),
    ),
    );
  }
}