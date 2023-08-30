import 'package:autoprohub/Provider%20module/Add%20vehicles/rent/add%20bike.dart';
import 'package:autoprohub/Provider%20module/Add%20vehicles/rent/add%20car.dart';
import 'package:autoprohub/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class add_rental extends StatefulWidget {
  const add_rental({super.key});

  @override
  State<add_rental> createState() => _add_rentalState();
}

class _add_rentalState extends State<add_rental> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(60),
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
        ),
      ),
      // endDrawer: Drawer(
      //   width: 280,
      //   shadowColor: Colors.black,
      //   child: Container(
      //       height: MediaQuery.of(context).size.height,
      //       child: ListView(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.only(right: 0),
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.center,
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 Center(
      //                   child: CircleAvatar(
      //                     backgroundImage: AssetImage('assets/home/s.png'),
      //                     radius: 50,
      //                   ),
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.only(left: 10.0, top: 10),
      //                   child: Text(' Mohammed Shaheen VP', style: TextStyle(
      //                       fontSize: 18, fontWeight: FontWeight.bold),),
      //                 ),
      //                 TextButton(onPressed: (){
      //                   Navigator.push(context, MaterialPageRoute(builder: (context)=>editprofile()));
      //                 }, child: Text('Edit Profile'))
      //               ],
      //             ),
      //           ),
      //           InkWell(
      //             onTap: () {
      //               Navigator.push(context,
      //                   MaterialPageRoute(builder: (context) =>nav()));
      //             },
      //             child: ListTile(
      //               leading: Icon(Icons.home),
      //               title: Text('HOME'),
      //
      //             ),
      //           ),
      //           Divider(
      //             thickness: 2,
      //           ),
      //           InkWell(
      //             onTap: () {
      //               Navigator.push(context,
      //                   MaterialPageRoute(builder: (context) => services()));
      //             },
      //             child: ListTile(
      //               leading: Icon(Icons.settings_suggest_outlined),
      //               title: Text('SERVICES'),
      //
      //             ),
      //           ),
      //           Divider(
      //             thickness: 2,
      //           ),
      //           InkWell(
      //             // onTap: () {
      //             //   Navigator.push(context,
      //             //       MaterialPageRoute(builder: (context) => complaints()));
      //             // },
      //             child: ListTile(
      //               leading: Icon(Icons.shopping_cart),
      //               title: Text('MY ORDERS'),
      //
      //
      //             ),
      //           ),
      //           Divider(
      //             thickness: 2,
      //           ),
      //           InkWell(
      //             onTap: () {
      //               Navigator.push(context,
      //                   MaterialPageRoute(builder: (context) =>feedback()));
      //             },
      //             child: ListTile(
      //               leading: Icon(Icons.comment),
      //               title: Text('FEEDBACKS'),
      //
      //             ),
      //           ),
      //           Divider(
      //             thickness: 2,
      //           ),
      //           // InkWell(
      //           //   // onTap: () {
      //           //   //   Navigator.push(
      //           //   //       context, MaterialPageRoute(builder: (context) => gt4()));
      //           //   // },
      //           //   child: ListTile(
      //           //     leading: Icon(Icons.group),
      //           //     title: Text('Group created'),
      //           //
      //           //   ),
      //           // ),
      //           // Divider(
      //           //   thickness: 2,
      //           // ),
      //           // InkWell(
      //           //   // onTap: () {
      //           //   //   Navigator.push(
      //           //   //       context, MaterialPageRoute(builder: (context) => c4()));
      //           //   // },
      //           //   child: ListTile(
      //           //     leading: Icon(Icons.local_offer_outlined),
      //           //     title: Text('Offer ride'),
      //           //
      //           //   ),
      //           // ),
      //           // Divider(
      //           //   thickness: 2,
      //           // ),
      //           InkWell(
      //             // onTap: () {
      //             //   Navigator.push(
      //             //       context, MaterialPageRoute(builder: (context) => help()));
      //             // },
      //             child: ListTile(
      //               leading: Icon(Icons.help_outline),
      //               title: Text('Help'),
      //
      //             ),
      //           ),
      //           Divider(
      //             thickness: 2,
      //           ),
      //           InkWell(
      //             onTap: () {
      //               showDialog(context: context, builder: (context) {
      //                 return AlertDialog(
      //                   title: Text('Are you sure you want to logout!'),
      //                   actions: [
      //                     TextButton(onPressed: () {
      //                       Navigator.push(context,
      //                           MaterialPageRoute(builder: (context) => nav()));
      //                     }, child: Text('No')),
      //                     TextButton(onPressed: () {
      //                       Navigator.push(context,
      //                           MaterialPageRoute(builder: (context) => start()));
      //                     }, child: Text('Yes')),
      //
      //                   ],
      //                 );
      //               });
      //             },
      //             child: ListTile(
      //               leading: Icon(Icons.logout),
      //               title: Text('logout'),
      //
      //             ),
      //           ),
      //
      //         ],
      //       )
      //
      //     // child: Drawer(
      //     //   width: 250,
      //     //   backgroundColor: Colors.blueGrey,
      //     //   child: Container(
      //     //     height: MediaQuery.of(context).size.height,
      //     //     child: Column(
      //     //       children: [
      //     //         Padding(
      //     //           padding: const EdgeInsets.all(8.0),
      //     //           child: CircleAvatar(
      //     //             radius: 55,
      //     //             backgroundColor: Colors.white,
      //     //             child: ClipOval(child: Image.asset('assets/home/s.png',fit: BoxFit.contain,)),
      //     //           ),
      //     //         ),
      //     //         Padding(
      //     //           padding: const EdgeInsets.all(8.0),
      //     //           child: Text('Mohammed Shaheen VP',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
      //     //         ),
      //     //         Text('Edit Profile',style: TextStyle(color: Colors.blueAccent),),
      //     //         Divider(
      //     //           thickness: 2,
      //     //         ),
      //     //
      //     //       ],
      //     //     ),
      //     //
      //     //
      //     //   ),
      //     // ),
      //   ),
      // ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>add_rentcar()));
                },
                child: Card(
                  elevation: 3,
                  child: Stack(
                      children:[ Opacity(

                        opacity: 0.7,
                        child: Container(
                          height: 220,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: AssetImage('assets/services/rentcar.jpeg'),fit: BoxFit.cover),
                          ),
                        ),
                      ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 50.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(' Add Car',style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold,fontFamily: 'soriya'),),
                                Icon(Icons.add,size: 40,color: Colors.white,),

                              ],
                            ),
                          ),
                        )
                      ]
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>add_rentbike()));
                },
                child: Card(
                  elevation: 3,
                  child: Stack(
                      children:[ Opacity(

                        opacity: 0.5,
                        child: Container(
                          height: 220,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: AssetImage('assets/services/rentbike.jpeg'),fit: BoxFit.cover),
                          ),
                        ),
                      ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 50.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(' Add Bike',style: TextStyle(color: Colors.black87,fontSize: 28,fontWeight: FontWeight.bold,fontFamily: 'soriya'),),
                                Icon(Icons.add,size: 40,color: Colors.black87,),

                              ],
                            ),
                          ),
                        )
                      ]
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
