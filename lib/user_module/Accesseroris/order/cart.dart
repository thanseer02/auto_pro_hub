import 'package:autoprohub/user_module/Accesseroris/order/payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back)),
        ),
        title: Text('Cart',style: TextStyle(color: Colors.black54,fontSize: 25),),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(CupertinoIcons.shopping_cart),
          )
        ],

      ),
      floatingActionButton: Container(
        width: 200,
        child: FloatingActionButton(
          backgroundColor: Colors.amber,
            elevation: 15,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            ),

            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>payment()));
            },
          child: Text('Order All',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
        ),
      ),
      body: Container(
        height: double.infinity,
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black26
                )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red,)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 100,
                                width: 150,
                                child: Image(image: AssetImage('assets/pacc_dt/hd.jpeg'),fit: BoxFit.cover,)),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                              child: Text('Item ${index+1}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),

                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                              child: Text('Brand ${index+1}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black45),),

                            ),

                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 15),
                              child: Text('\$${index+1}000',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black54,decoration: TextDecoration.lineThrough),),

                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
                              child: Text('\%${index+3}0 Off/-',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green[300],),),

                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                              child: Text('\$${index+1}00',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.green,),),

                            ),


                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
