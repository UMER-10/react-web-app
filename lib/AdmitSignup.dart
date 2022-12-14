// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// //import 'package:fyp/components/colors.dart';
// import 'package:fyp/admitlogin.dart';
// import 'package:get/get.dart';

// class AdminSignup extends StatefulWidget {
//   const AdminSignup({Key? key}) : super(key: key);

//   @override
//   State<AdminSignup> createState() => _AdminSignupState();
// }

// class _AdminSignupState extends State<AdminSignup> {
//   final _foamKey = GlobalKey<FormState>();

//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();

// //  final _auth = FirebaseAuth.instance;

//   // void login() {
//   //   _auth
//   //       .signInWithEmailAndPassword(
//   //           email: emailController.text,
//   //           password: passwordController.text.toString())
//   //       .then((value) {
//   //     QuickAlert.show(
//   //       context: context,
//   //       type: QuickAlertType.success,
//   //       titleColor: Colors.blueGrey,
//   //       title: 'complete',
//   //     );
//   //     Get.off(Homepage());
//   //   }).onError((error, stackTrace) {
//   //     QuickAlert.show(
//   //       context: context,
//   //       type: QuickAlertType.error,
//   //       titleColor: Colors.red,
//   //       title: 'Error',
//   //     );
//   //   });
//   // }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     emailController.dispose();
//     passwordController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: btnlogingreyGreen,
//         title: Text('Admin Signup'),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//           child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Sign up",
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Row(
//               children: [
//                 Text(
//                   "Don't have an account?",
//                   style: TextStyle(color: Colors.black54),
//                 ),
//                 SizedBox(
//                   width: 5,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Get.off(AdminLogin());
//                   },
//                   child: Text(
//                     "Login ",
//                     style: TextStyle(color: btnlogingreyGreen),
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             Container(
//               height: 50,
//               //   width: 150,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.white,
//                   side: BorderSide(
//                     width: 1.0,
//                     color: btnlogingreyGreen,
//                   ),
//                   shape: new RoundedRectangleBorder(
//                     borderRadius: new BorderRadius.circular(10.0),
//                   ),
//                 ),
//                 onPressed: () {},
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset(
//                       'assets/image 1.png',
//                       scale: 4,
//                     ),
//                     SizedBox(
//                       width: 3,
//                     ),
//                     Text(
//                       'Continue with Google',
//                       style: TextStyle(color: Colors.black),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             // Center(
//             //     child: Text(
//             //   'OR',
//             //   style: TextStyle(fontSize: 20),
//             // )),
//             SizedBox(
//               height: 20,
//             ),
//             Form(
//                 key: _foamKey,
//                 child: Column(
//                   children: [
//                     TextFormField(
//                       keyboardType: TextInputType.emailAddress,
//                       controller: emailController,
//                       decoration: const InputDecoration(
//                         prefixIcon: Icon(Icons.alternate_email),
//                         hintText: 'Email',
//                       ),
//                       validator: (Value) {
//                         if (Value!.isEmpty) {
//                           return "Enter email";
//                         }
//                         return null;
//                       },
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     TextFormField(
//                       controller: passwordController,
//                       obscureText: true,
//                       decoration: const InputDecoration(
//                         hintText: 'Password',
//                       ),
//                       validator: (Value) {
//                         if (Value!.isEmpty) {
//                           return "Enter Password";
//                         }
//                         return null;
//                       },
//                     ),
//                   ],
//                 )),
//             SizedBox(
//               height: 90,
//             ),
//             Center(
//               child: Container(
//                 height: 50,
//                 width: 300,
//                 //   width: 150,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     primary: btnlogingreyGreen,
//                     // side: BorderSide(
//                     //   width: 1.0,
//                     //   color: Colors.blueAccent,
//                     // ),
//                     shape: new RoundedRectangleBorder(
//                       borderRadius: new BorderRadius.circular(20),
//                     ),
//                   ),
//                   onPressed: () {
//                     if (_foamKey.currentState!.validate()) {
//                       // login();
//                     }
//                   },
//                   child: Text(
//                     'Sign UP',
//                     style: TextStyle(color: Colors.white, fontSize: 20),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       )),
//     );
//   }
// }
