import 'package:country_code_picker/country_codes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:fyp/dashboard.dart';


class profileScreen extends StatefulWidget {
  const profileScreen({super.key});


  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  String? gender;
  // String skillsname = "";
  // TextEditingController controller = new TextEditingController();
  // List<String> skillsList = ["1","2","3","4","5","6"];
  // var skills = ['front end developer','back end developer','Database Analytics'];
  // var _CurrentItemSelected= 'Ruppes';
  // final String valueChoose;
  // List listitem = [
  //   "item1","item2","item3","item4","item5",
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Create Profile'),centerTitle: true,),
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      TextFormField(
  decoration: const InputDecoration(
      border: UnderlineInputBorder(),
      labelText: 'First Name',
  ),
      ),
        SizedBox(height: 20,),
  Center(
      child: TextFormField(
      obscureText:true
    ,
       decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Last Name',
        ),
      ),
  
    ),  

  Row(
    children: [
      CountryCodePicker(
        initialSelection: 'PAKISTAN',
        // showCountryOnly: false,
        // showOnlyCountryWhenClosed: false,
        favorite: ['+92','PAK'],
        enabled: true,
        hideMainText: true,
        showFlagMain: true,
        showFlag: true,
        hideSearch: false,
        showFlagDialog: false,
        alignLeft: true,
        padding: EdgeInsets.all(13.0),



      ),
  
      Container(
        height: 30,
        width: 200,
        //color: Colors.amber,
        child: TextFormField(
       decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          hintText: 'Phone Number',
        ),
      ),
        )


    ],
  ),
  Container(
    height: 30,
    width: 300,
    //color: Colors.amber,
    child:TextFormField(
     decoration: const InputDecoration(
      hintText: 'D.O.B',
     ),
    ),
    


  ),
  Row(
    children: [
      Radio(value:"Male", groupValue: gender, onChanged: (Value){
        setState(() {
          gender=Value.toString();
        });
      },
      ),
      SizedBox(width: 10.0,),
      Text('Male'),
        Radio(value:"Female", groupValue: gender, onChanged: (Value){
          setState(() {
          gender=Value.toString();
        });
        },
    ),
    SizedBox(width: 10.0,),
    Text('Female'),
    ],),
      Container(
    height: 30,
    width: 300,
    //color: Colors.amber,
    child:TextFormField(
     decoration: const InputDecoration(
      hintText: 'Home Address',
     ),
    ),
    
      ),
      SizedBox(height: 20,),
       Container(
    height: 30,
    width: 300,
    //color: Colors.amber,
    child:TextFormField(
     decoration: const InputDecoration(
      hintText: 'Education',
     ),
    ),
    
      ),
        Container(
    height: 60,
    width: 300,
    //color: Colors.amber,
    child:TextFormField(
     decoration: const InputDecoration(
      hintText: 'Skills',
     ),
    ),
    
      ),
      SizedBox(height: 40,),
  ElevatedButton(onPressed: (){
   // Navigator.of(context).push(MaterialPageRoute(builder: (context) => loginScreen()));
   Navigator.of(context).push(MaterialPageRoute(builder: (context) => dashBoard()));
  }, child:Text('Submit'))
    
      // Container(
      //   width: 130,
      //   height: 50,
      //   decoration: BoxDecoration(
      //     border: Border.all(color: Colors.grey),
      //     color: Colors.white,
      //     borderRadius: BorderRadius.circular(6)
      //   ),
      //   child: TextField(
      //     decoration: InputDecoration(border: InputBorder.none,suffixIcon:Icon(Icons.arrow_downward) 
      //     ),
      //   ),
      // ),
      // Container(
      //   height: 200,
      //   width: 130,
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(9),
      //   color:Colors.white,
      //   boxShadow:[
      //     BoxShadow(
      //       color: Colors.grey.withOpacity(0.3),
      //       spreadRadius: 1,
      //       blurRadius: 3,
      //       offset: Offset(0,1),

      //     ),
      //   ]),
      //   child: ListView.builder(
      //     itemCount: skillsList.length,
      //     itemBuilder: ((context, index){
      //     return ListTile(
      //       title:Text(skillsList[index]),
      //     );
      //   })),

      // )
      // DropdownButton<String>(
      //   items: skills.map((String DropdownMenuItem){
      //     return DropdownMenuItem<String>(
      //       value: DropdownMenuItem,
      //       child:Text(DropdownMenuItem),

      //     );
      //   }).toList(),
      //   onChanged: (String newvalueSelected){
      //     setState(() { 
      //       this._CurrentItemSelected = newvalueSelected;
      //     });

      //   },
      // ),
      
//      DropdownButton(
//       value: valueChoose,
//      onChanged: (newValue) {
//       setState(() {
//         valueChoose = newValue;
//       });
//      }, 
// items:listitem.map((valueItem) 
// {
//   return DropdownMenuItem(
//     value: valueItem,
//     child: Text(valueItem),
//   );
// }).toList(),
//      ),
    ],),

        
        ),
        
    );
  }
}