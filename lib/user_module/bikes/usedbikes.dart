
import 'package:autoprohub/navbar.dart';
import 'package:autoprohub/user_module/bikes/bike.dart';
import 'package:autoprohub/user_module/bikes/premium.dart';
import 'package:autoprohub/user_module/bikes/scooter.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../bikes/usedbikes.dart';
import '../home/feedback.dart';
import '../login/login.dart';
import '../login/start.dart';
import '../profile/editprofile.dart';
import '../rental/renthome.dart';
import '../services/services.dart';
import '../services/usedcars/usedcars.dart';
import 'bikemodels.dart';
import 'detail_page.dart';

class usedbikes extends StatefulWidget {
  const usedbikes({super.key});

  @override
  State<usedbikes> createState() => _usedbikesState();
}

class _usedbikesState extends State<usedbikes> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child:   AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back)),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text('AUTO PRO HUB',style: TextStyle(color: Colors.black54,fontSize: 25),),
            ),
            actions: [

            ],

          ),
        ),
        endDrawer: Drawer(
          width: 280,
          shadowColor: Colors.black,
          child: Container(
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/home/s.png'),
                            radius: 50,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 10),
                          child: Text(' Mohammed Shaheen VP', style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),),
                        ),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>editprofile()));
                        }, child: Text('Edit Profile'))
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>nav()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.home),
                      title: Text('HOME'),

                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => services()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.settings_suggest_outlined),
                      title: Text('SERVICES'),

                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  InkWell(
                    // onTap: () {
                    //   Navigator.push(context,
                    //       MaterialPageRoute(builder: (context) => complaints()));
                    // },
                    child: ListTile(
                      leading: Icon(Icons.shopping_cart),
                      title: Text('MY ORDERS'),


                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>feedback()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.comment),
                      title: Text('FEEDBACKS'),

                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  // InkWell(
                  //   // onTap: () {
                  //   //   Navigator.push(
                  //   //       context, MaterialPageRoute(builder: (context) => gt4()));
                  //   // },
                  //   child: ListTile(
                  //     leading: Icon(Icons.group),
                  //     title: Text('Group created'),
                  //
                  //   ),
                  // ),
                  // Divider(
                  //   thickness: 2,
                  // ),
                  // InkWell(
                  //   // onTap: () {
                  //   //   Navigator.push(
                  //   //       context, MaterialPageRoute(builder: (context) => c4()));
                  //   // },
                  //   child: ListTile(
                  //     leading: Icon(Icons.local_offer_outlined),
                  //     title: Text('Offer ride'),
                  //
                  //   ),
                  // ),
                  // Divider(
                  //   thickness: 2,
                  // ),
                  InkWell(
                    // onTap: () {
                    //   Navigator.push(
                    //       context, MaterialPageRoute(builder: (context) => help()));
                    // },
                    child: ListTile(
                      leading: Icon(Icons.help_outline),
                      title: Text('Help'),

                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(context: context, builder: (context) {
                        return AlertDialog(
                          title: Text('Are you sure you want to logout!'),
                          actions: [
                            TextButton(onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => nav()));
                            }, child: Text('No')),
                            TextButton(onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => start()));
                            }, child: Text('Yes')),

                          ],
                        );
                      });
                    },
                    child: ListTile(
                      leading: Icon(Icons.logout),
                      title: Text('logout'),

                    ),
                  ),

                ],
              )

            // child: Drawer(
            //   width: 250,
            //   backgroundColor: Colors.blueGrey,
            //   child: Container(
            //     height: MediaQuery.of(context).size.height,
            //     child: Column(
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: CircleAvatar(
            //             radius: 55,
            //             backgroundColor: Colors.white,
            //             child: ClipOval(child: Image.asset('assets/home/s.png',fit: BoxFit.contain,)),
            //           ),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Text('Mohammed Shaheen VP',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
            //         ),
            //         Text('Edit Profile',style: TextStyle(color: Colors.blueAccent),),
            //         Divider(
            //           thickness: 2,
            //         ),
            //
            //       ],
            //     ),
            //
            //
            //   ),
            // ),
          ),
        ),

        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Stack(
          children: [
          Container(
          height: 220,
          decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/bikes/bh.png'),fit: BoxFit.cover)
          ),
          ),

          Padding(
          padding: const EdgeInsets.only(left: 12,right: 12,top: 15),
    child: TextField(
    decoration: InputDecoration(
      filled: true,
    fillColor: Colors.white24,
    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
    focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
    prefixIcon: Icon(CupertinoIcons.search),
    hintText: 'Search here'
    ),
    ),
    )
    ],
    ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('Vehicle Types',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Premium Bikes',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Colors.black54),),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>premium()));
                  }, icon: Icon(CupertinoIcons.arrow_right,color: Colors.black54))
                ],
              ),
            ),
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: usedbikemodel1.length,
                  itemBuilder: (context,index){
                    return
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>detail_page_bike(img: usedbikemodel1[index]['img'],
                              name: usedbikemodel1[index]['name'],
                              dis: usedbikemodel1[index]['dis'],
                              rate: usedbikemodel1[index]['rate'],
                              cc: usedbikemodel1[index]['cc'],
                              milege: usedbikemodel1[index]['milege'],
                              disc: usedbikemodel1[index]['disc'],
                              year: usedbikemodel1[index]['year'])));
                        },
                        child: Card(
                          elevation: 4,
                          child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 200,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),

                                    ),

                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 122,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(image: AssetImage('assets/bikes/${usedbikemodel1[index]['img']}'),fit: BoxFit.cover),
                                        color: Colors.blue
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 130),
                                  child: Text('${usedbikemodel1[index]['name']}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 150),
                                  child: Text('${usedbikemodel1[index]['dis']}'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 180),
                                  child: Text('${usedbikemodel1[index]['rate']}'),
                                ),

                              ]),
                        ),
                      );



                  }
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Bikes',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Colors.black54),),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>bikes()));

                  }, icon: Icon(CupertinoIcons.arrow_right,color: Colors.black54))
                ],
              ),
            ),
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: usedbikemodel.length,
                  itemBuilder: (context,index){
                    return
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>detail_page_bike(img: usedbikemodel[index]['img'],
                              name: usedbikemodel[index]['name'],
                              dis: usedbikemodel[index]['dis'],
                              rate: usedbikemodel[index]['rate'],
                              cc: usedbikemodel[index]['cc'],
                              milege: usedbikemodel[index]['milege'],
                              disc: usedbikemodel[index]['disc'],
                              year: usedbikemodel[index]['year'])));
                        },
                        child: Card(
                          elevation: 4,
                          child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 200,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),

                                    ),

                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 122,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(image: AssetImage('assets/bikes/${usedbikemodel[index]['img']}'),fit: BoxFit.cover),
                                        color: Colors.blue
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 130),
                                  child: Text('${usedbikemodel[index]['name']}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 150),
                                  child: Text('${usedbikemodel[index]['dis']}'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 180),
                                  child: Text('${usedbikemodel[index]['rate']}'),
                                ),

                              ]),
                        ),
                      );



                  }
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Scooter',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: Colors.black54),),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>scooter()));

                  }, icon: Icon(CupertinoIcons.arrow_right,color: Colors.black54))
                ],
              ),
            ),
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: usedbikemodel2.length,
                  itemBuilder: (context,index){
                    return
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>detail_page_bike(img: usedbikemodel2[index]['img'],
                              name: usedbikemodel2[index]['name'],
                              dis: usedbikemodel2[index]['dis'],
                              rate: usedbikemodel2[index]['rate'],
                              cc: usedbikemodel2[index]['cc'],
                              milege: usedbikemodel2[index]['milege'],
                              disc: usedbikemodel2[index]['disc'],
                              year: usedbikemodel2[index]['year'])));
                        },
                        child: Card(
                          elevation: 4,
                          child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 200,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),

                                    ),

                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 122,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(image: AssetImage('assets/bikes/${usedbikemodel2[index]['img']}'),fit: BoxFit.cover),
                                        color: Colors.blue
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 130),
                                  child: Text('${usedbikemodel2[index]['name']}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 150),
                                  child: Text('${usedbikemodel2[index]['dis']}'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,top: 180),
                                  child: Text('${usedbikemodel2[index]['rate']}'),
                                ),

                              ]),
                        ),
                      );



                  }
              ),
            ),
            SizedBox(height: 15,)
          ])
    )
          )
    );
  }
}
