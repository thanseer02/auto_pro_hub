

import 'package:autoprohub/Provider%20module/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';
class start extends StatefulWidget {
  const start({super.key});

  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/logins/home.jpg',),fit: BoxFit.cover)
          ),
          child: Align(
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: 390,),
                  Container(
                    height: 60,
                      width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),


                    ),

                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                         backgroundColor: Color(0xff283673),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                      ),onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));

                    },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.person_outline_outlined,color: Colors.white,),
                            Text('User',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                          ],
                        )
                      ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 60,
                    width: 150,
                    child: ElevatedButton(style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                    ),onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Plogin()));
                    }, child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(CupertinoIcons.person_circle,color: Color(0xff283673)),
                        Text('Provider',style: TextStyle(color: Color(0xff283673),fontSize: 18,fontWeight: FontWeight.bold),),
                      ],
                    )
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
