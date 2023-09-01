import 'package:autoprohub/user_module/rental/car/rentcarmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../navbar.dart';
import 'bikemodels.dart';
import 'detail_page.dart';
class scooter extends StatefulWidget {
  const scooter({super.key});

  @override
  State<scooter> createState() => _scooterState();
}

class _scooterState extends State<scooter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
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
              padding: const EdgeInsets.only(left: 12,right: 12,top: 15),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white60,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),

                    ),
                    focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    prefixIcon: Icon(CupertinoIcons.search),
                    hintText: 'Search here'
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                itemCount: usedbikemodel2.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.black45
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 100,
                              width: double.infinity,
                              child: Image(image: AssetImage('assets/bikes/${usedbikemodel2[index]['img']}'),fit: BoxFit.cover,),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('${usedbikemodel2[index]['name']}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                  child: Text('${usedbikemodel2[index]['rate']} ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.green),),
                                ),

                              ],
                            ),


                          ],
                        ),
                      ),
                    ),
                  );
                },),
            )
          ],
        ),
      ),


    );
  }
}