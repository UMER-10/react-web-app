import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class dashBoard extends StatefulWidget {
  const dashBoard({super.key});

  @override
  State<dashBoard> createState() => _dashBoardState();
}

class _dashBoardState extends State<dashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('DashBoard'),centerTitle: true,),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Mubashir Iqbal"),
                 accountEmail:Text(" mubashiri639@gmail.com"),
                 currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                  "MM",
                  style: TextStyle(fontSize: 25.0),
                 ),
                 ),
                 ),
                 ListTile(leading: Icon(Icons.home),
                 title: Text("Home"),
                 trailing: Icon(Icons.arrow_forward_ios_rounded
                 ),
                 ),
                 ListTile(leading: Icon(Icons.person),
                 title: Text("Profile"),
                 onTap: null,
                 trailing: Icon(Icons.arrow_forward_ios_rounded
                 ),
                 ),
                 ListTile(leading: Icon(Icons.notifications),
                 title: Text("Notification"),
                 trailing: Icon(Icons.arrow_forward_ios_rounded
                 ),
                 ),
                 ListTile(leading: Icon(Icons.contact_page),
                 title: Text("Contact Us"),
                 trailing: Icon(Icons.arrow_forward_ios_rounded
                 ),
                 ),
                 ListTile(leading: Icon(Icons.help_center),
                 title: Text("Help Center"),
                 trailing: Icon(Icons.arrow_forward_ios_rounded
                 ),
                 ),
                 ListTile(leading: Icon(Icons.favorite),
                 title: Text("Review & Rating"),
                 trailing: Icon(Icons.arrow_forward_ios_rounded
                 ),
                 ),
                 
                 ListTile(leading: Icon(Icons.settings),
                 title: Text("Settings"),
                 trailing: Icon(Icons.arrow_forward_ios_rounded
                 ),
                 ),
                 ListTile(leading: Icon(Icons.logout),
                 title: Text("Logut"),
                 trailing: Icon(Icons.arrow_forward_ios_rounded
                 ),
                 ),

            ],
          ),
        ),
    );
  }
}