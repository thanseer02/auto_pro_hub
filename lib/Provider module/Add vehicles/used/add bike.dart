import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class add_usedbike extends StatefulWidget {
  const add_usedbike({super.key});

  @override
  State<add_usedbike> createState() => _add_usedbikeState();
}

class _add_usedbikeState extends State<add_usedbike> {
  TextEditingController vnamectrl=TextEditingController();
  TextEditingController brandname=TextEditingController();
  TextEditingController fueltype=TextEditingController();
  TextEditingController cc=TextEditingController();
  TextEditingController milege=TextEditingController();
  TextEditingController kmdriven=TextEditingController();
  TextEditingController vyear=TextEditingController();
  TextEditingController ryear=TextEditingController();
  TextEditingController price=TextEditingController();
  List<XFile> selectedImage = [];
  String _selectedItem = 'Petrol';
  List<String> _items = ['Petrol', 'Electric',];
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back),color: Colors.black,),
        title: Text('Add Bike',style: TextStyle(color: Colors.black45),),
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 250,
                  width: 350,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black26
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){},
                          icon: Icon(Icons.add_a_photo_outlined,size: 40,)),
                      Text('Add Image')
                    ],
                  ),

                ),
              ),
              // Row(
              //   children: [
              //     SizedBox(width: 8,),
              //     Container(
              //       height: 230,
              //       width: 220,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(15),
              //         color: Colors.blue
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Column(
              //         children: [
              //           Container(
              //             height: 110,
              //             width: 150,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(15),
              //                 color: Colors.blue
              //             ),
              //           ),
              //           SizedBox(height: 8,),
              //           Container(
              //             height: 110,
              //             width: 150,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(15),
              //                 color: Colors.blue
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              // Row(
              //   children: [
              //     SizedBox(width: 8,),
              //
              //     Container(
              //       height: 110,
              //       width: 120,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(15),
              //           color: Colors.blue
              //       ),
              //     ),
              //     SizedBox(width: 8,),
              //
              //     Container(
              //       height: 110,
              //       width: 120,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(15),
              //           color: Colors.blue
              //       ),
              //     ),
              //     SizedBox(width: 8,),
              //     Container(
              //       height: 110,
              //       width: 120,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(15),
              //           color: Colors.blue
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(height: 20,),

              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Text('Vehicle Name',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
              // ),
              SizedBox(
                width: 340,
                child: TextFormField(
                  controller: vnamectrl,
                  decoration: InputDecoration(
                    hintText: 'Vehicle Name',
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: 340,
                child: TextFormField(
                  controller: brandname,
                  decoration: InputDecoration(
                    hintText: 'Brand Name',
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              // SizedBox(
              //   width: 340,
              //   child: TextFormField(
              //     controller: fueltype,
              //     decoration: InputDecoration(
              //       hintText: 'Fuel type',
              //       enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              //       focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              //     ),
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: DropdownButton<String>(
                      value: _selectedItem,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedItem = newValue!;
                        });
                      },
                      dropdownColor: Colors.white, // Change the background color here

                      items: _items.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Text(value,style: TextStyle(color: Colors.black,fontSize: 16),),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: TextFormField(
                      controller: cc,
                      decoration: InputDecoration(
                        hintText: 'Engine CC',
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 120,
                    child: TextFormField(
                      controller: milege,
                      decoration: InputDecoration(
                        hintText: 'Milege',
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 140,
                    child: TextFormField(
                      controller: kmdriven,
                      decoration: InputDecoration(
                        hintText: 'KM Driven',
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),


                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 120,
                    child: TextFormField(
                      controller: vyear,
                      decoration: InputDecoration(
                        hintText: 'Vehicle Year',
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: TextFormField(
                      controller: ryear,
                      decoration: InputDecoration(
                        hintText: 'Registration Year',
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),


                ],
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: 340,
                child: TextFormField(
                  controller: price,
                  decoration: InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.money_dollar),
                    hintText: 'Price',
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),

              SizedBox(height: 15,),
              Center(
                child: Container(
                    height: 50,
                    width: 150,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green.shade400,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        onPressed: (){},
                        child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 18),))),
              ),

              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
