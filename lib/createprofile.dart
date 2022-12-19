import 'package:country_code_picker/country_codes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:fyp/homepage.dart';
import 'package:fyp/jobseeker.dart';
import 'package:intl/intl.dart';


class profileScreen extends StatefulWidget {
  const profileScreen({super.key});


  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  String? gender;
 TextEditingController _date = TextEditingController();
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
          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.purple,
                                  ),
                                ),
                                hintText: "First Name",
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.purple,
                                  ),
                                ),
                                hintText: "Last Name",
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
  //     TextField(
  // decoration: const InputDecoration(
  //     enabledBorder: OutlineInputBorder(
        
  //     ),
  //     labelText: 'First Name',
  // ),
  //     ),
  //       SizedBox(height: 20,),
  // Center(
  //     child: TextFormField(
    
  //      decoration: const InputDecoration(
  //         border: UnderlineInputBorder(),
  //         labelText: 'Last Name',
  //       ),
  //     ),
  
  //   ),  
  
  

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
        height: 25,
        width: 220,
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
    padding: const EdgeInsets.all(5.0),
    //height: 30,
    //width: 300,
    //color: Colors.amber,
    child:TextField(
      controller: _date,
     decoration: const InputDecoration(
      icon: Icon(Icons.calendar_today_rounded),
      labelText: 'D.O.B',),
    onTap: () async {
        DateTime? pickedddate = await showDatePicker(
        context: context, 
        initialDate: DateTime.now(), 
        firstDate: DateTime(2000), 
        lastDate: DateTime(2101));
        if(pickedddate != null){
          setState(() {
        _date.text = DateFormat('dd-MM-yyyy').format(pickedddate);
                  });
        }
    },
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
      Text('Male',
      style: TextStyle(color: Colors.black),),
        Radio(value:"Female", groupValue: gender, onChanged: (Value){
          setState(() {
          gender=Value.toString();
        });
        },
    ),
    SizedBox(width: 10.0,),
    Text('Female',
          style: TextStyle(color: Colors.black),),

    ],),
      Container(
    height: 20,
    width: 250,
      ),
                          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.purple,
                                  ),
                                ),
                                hintText: "Home Address",
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
    //color: Colors.amber,
    // child:
    // TextFormField(
    //  decoration: const InputDecoration(
    //   hintText: 'Home Address',
    //  ),
    // ),
    
      
      SizedBox(height: 10,),
       Container(
    //height: 30,
    //width: 300,
    //color: Colors.amber,
    child:
    TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.purple,
                                  ),
                                ),
                                hintText: "Education",
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
    // TextFormField(
    //  decoration: const InputDecoration(
    //   hintText: 'Education',
    //  ),
    // ),
    
      ),
            SizedBox(height: 10,),

        Container(
    //height: 60,
    //width: 300,
    //color: Colors.amber,
    child:
    // TextFormField(
    //  decoration: const InputDecoration(
    //   hintText: 'Skills',
    //  ),
    // ),
    TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.purple,
                                  ),
                                ),
                                hintText: "Skills",
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
    
      ),
      SizedBox(height: 10,),
       Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Submit',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 27,
                                    fontWeight: FontWeight.w700),
                              ),
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: Color(0xff4c505b),
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));

                                    },
                                    icon: Icon(
                                      Icons.arrow_forward,
                                    )),
                              )
                            ],
                          ),
  // ElevatedButton(onPressed: (){
  //  // Navigator.of(context).push(MaterialPageRoute(builder: (context) => loginScreen()));
  //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
  // }, child:Text('Submit'))
    
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