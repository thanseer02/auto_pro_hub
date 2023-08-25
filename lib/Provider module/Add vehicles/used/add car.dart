import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class add_usedcar extends StatefulWidget {
  const add_usedcar({super.key});

  @override
  State<add_usedcar> createState() => _add_usedcarState();
}

class _add_usedcarState extends State<add_usedcar> {
  TextEditingController vnamectrl=TextEditingController();
  TextEditingController fueltype=TextEditingController();
  TextEditingController cc=TextEditingController();
  TextEditingController milege=TextEditingController();
  TextEditingController kmdriven=TextEditingController();
  TextEditingController year=TextEditingController();
  TextEditingController price=TextEditingController();
  List<XFile> selectedImage = [];
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
        title: Text('Add Car',style: TextStyle(color: Colors.black),),
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 230,
                  width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){}, child: Text('Add Image')),
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
              SizedBox(height: 5,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Vehicle Name',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: vnamectrl,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Fuel Type',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: fueltype,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Engine CC',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: cc,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Milege',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: milege,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Kilometer Driven',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: kmdriven,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Registration Year',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: year,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Price',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: price,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              SizedBox(height: 15,),
               Center(
                 child: Container(
                   height: 46,
                     width: 150,
                     child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color(0xff283673),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),onPressed: (){}, child: Text('Submit'))),
               ),

              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
