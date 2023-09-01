import 'package:autoprohub/user_module/Accesseroris/order/payment.dart';
import 'package:flutter/material.dart';
class order_product extends StatefulWidget {
  const order_product({super.key});

  @override
  State<order_product> createState() => _order_productState();
}

class _order_productState extends State<order_product> {
  int selectedOption = 1; // Default selected option

  void handleRadioValueChange(int? value) {
    setState(() {
      selectedOption = value!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Text('Address',style: TextStyle(color: Colors.black54,fontSize: 25),),
          ),
          actions: [
          ],

        ),
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Deliver to:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black45),),

                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 8),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text('Full Name'),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)

                      )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 8),
                  child: TextFormField(
                    decoration: InputDecoration(
                        label: Text('Phone number'),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)

                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 8),
                  child: TextFormField(
                    decoration: InputDecoration(
                        label: Text('Add ALternative Phone Number'),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)

                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 130,
                        child: TextFormField(
                          decoration: InputDecoration(
                              label: Text('Pin Code'),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)

                              )
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: TextFormField(
                          decoration: InputDecoration(
                              label: Text('State'),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)

                              )
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 130,
                        child: TextFormField(
                          decoration: InputDecoration(
                              label: Text('City'),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)

                              )
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: TextFormField(
                          decoration: InputDecoration(
                              label: Text('House no/Buildind no'),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)

                              )
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 8),
                  child: TextFormField(
                    decoration: InputDecoration(
                        label: Text('Area/Colony'),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)

                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Type of Address :',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black45),),

                ),
                Row(
                  children: [
                  Radio(
                  value: 1,
                    activeColor: Colors.indigo,
                    groupValue: selectedOption,
                  onChanged: handleRadioValueChange,
                ),
                 Text('Home Address'),
                Radio(
                  autofocus: true,
                activeColor: Colors.indigo,
                value: 2,
               groupValue: selectedOption,
               onChanged: handleRadioValueChange,
        ),
                    Text('Work Address'),

                  ],
                ),
                SizedBox(height: 20,),

                Center(
                  child: Container(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            backgroundColor: Colors.orange[400]
                        ),
                        onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>payment()));
                        }, child: Text('Save Address',style: TextStyle(color: Colors.white,fontSize: 18),)),
                  ),
                ),






              ],
            ),
          ),
        ),
      ),
    );
  }
}
