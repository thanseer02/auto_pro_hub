import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class add_accessories extends StatefulWidget {
  const add_accessories({super.key});

  @override
  State<add_accessories> createState() => _add_accessoriesState();
}

class _add_accessoriesState extends State<add_accessories> {
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
  String _selectedItem = 'Car';
  List<String> _items = ['Car', 'Bike',];
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
        title: Text('Add Accessories',style: TextStyle(color: Colors.black45),),
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
                    hintText: 'Prodcut Name',
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
                        child: Text(value,style: TextStyle(color: Colors.black,fontSize: 18),),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                child: TextField(
                  maxLines: 8 ,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      hintText: 'Discription....',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red,width: 5),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.black26,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Colors.black
                          )
                      )
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 140,
                    child: TextFormField(
                      // controller: cc,
                      decoration: InputDecoration(
                        hintText: 'Price',
                        prefixIcon: Icon(Icons.attach_money_rounded),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                    child: TextFormField(
                      // controller: cc,
                      decoration: InputDecoration(
                        hintText: 'Discount',
                        prefixIcon: Icon(Icons.percent),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 15,),
              SizedBox(
                width: 300,
                child: TextFormField(
                  // controller: cc,
                  decoration: InputDecoration(
                    hintText: 'Offer Price',
                    prefixIcon: Icon(Icons.attach_money_rounded),
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
