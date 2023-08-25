import 'dart:convert';

import 'package:autoprohub/Provider%20module/login/login.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../user_module/Connection/connect.dart';
import '../../user_module/login/login.dart';
import '../../user_module/login/register.dart';
class Pregister extends StatefulWidget {
  const Pregister({super.key});

  @override
  State<Pregister> createState() => _PregisterState();
}

class _PregisterState extends State<Pregister> {
  TextEditingController unamectrl=TextEditingController();
  TextEditingController emailctrl=TextEditingController();
  TextEditingController noctrl=TextEditingController();
  TextEditingController passctrl=TextEditingController();
  TextEditingController cpassctrl=TextEditingController();
  Future<void> sendData()
  async {
    var data = {
      'name': unamectrl.text,
      'email': emailctrl.text,
      'phone': noctrl.text,
      'password': passctrl.text,
      'type':'provider'
    };
    var response = await post(Uri.parse('${Con.url}insert.php'), body: data);
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      if (jsonDecode(response.body)['result'] == 'success') {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Succesfully registerd')));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Plogin()));
      }
      else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('failed registraion')));
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Pregister()));
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
    color: Colors.white
    // image: DecorationImage(image: AssetImage('assets/logins/car.png'),fit: BoxFit.cover)
    ),
          child:  SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(height: 75,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffD9D9D9)
                    ),
                    child: TextFormField(
                      controller: unamectrl,
                      decoration: InputDecoration(
                        label: Text('Username'),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

                      ),
                    ),
                  ),
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffD9D9D9)
                    ),
                    child: TextFormField(
                      controller: emailctrl,
                      decoration: InputDecoration(
                        label: Text('E-mail'),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

                      ),
                    ),
                  ),
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffD9D9D9)
                    ),
                    child: TextFormField(
                      controller: noctrl,
                      decoration: InputDecoration(
                        label: Text('Phone Number'),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

                      ),
                    ),
                  ),
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffD9D9D9)
                    ),
                    child: TextFormField(
                      controller: passctrl,
                      decoration: InputDecoration(
                        label: Text('Password'),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

                      ),
                    ),
                  ),
                ),
                SizedBox(height: 3,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffD9D9D9)
                    ),
                    child: TextFormField(
                      controller: cpassctrl,
                      decoration: InputDecoration(
                        label: Text('Conform Password'),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Center(
                  child: Container(
                      height: 67,
                      width: 250,

                      child: ElevatedButton(style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff283673),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                      ),onPressed: () {
                        sendData();
                      }, child: Text('Sign Up',style: TextStyle(color: Colors.white),),)),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?',style: TextStyle(color: Colors.black),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Plogin()));

                    }, child: Text('Sign In',style: TextStyle(color: Colors.blue),))
                  ],
                ),


              ],
            ),
          ),
        ),
    );
  }
}
