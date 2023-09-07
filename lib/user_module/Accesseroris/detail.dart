import 'package:autoprohub/user_module/Accesseroris/order/cart.dart';
import 'package:autoprohub/user_module/Accesseroris/order/confirm%20order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'order/order_product.dart';

class detail extends StatefulWidget {
  detail(
      {super.key,
      required this.name,
      required this.price,
      required this.image,
      required this.stock,
      required this.offer,
      required this.rate,
      required this.discripton,
      required this.rating});
  var image, name, price, stock, offer, rate, discripton, rating;
  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            CupertinoIcons.back,
            color: Colors.black45,
            size: 35,
          ),
        ),
        title: Text(
          'Auto Pro Hub',
          style: TextStyle(color: Colors.black45),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.name,
                        style: TextStyle(
                             fontSize: 22),
                      ),
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 250,
                              width: MediaQuery.of(context).size.width,
                              child: Image(
                                image: AssetImage(widget.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 250,
                              width: MediaQuery.of(context).size.width,
                              child: Image(
                                image: AssetImage(widget.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 250,
                              width: MediaQuery.of(context).size.width,
                              child: Image(
                                image: AssetImage(widget.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 250,
                              width: MediaQuery.of(context).size.width,
                              child: Image(
                                image: AssetImage(widget.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    // Text('Stock ${widget.stock}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.green),),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            '${widget.offer} off',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Text(
                            '\$${widget.rate}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.black45,
                                decoration: TextDecoration.lineThrough,),
                          ),
                        ),
                        Text(
                          widget.price,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 32),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.discripton,
                        style: TextStyle(
                             fontSize: 16),
                      ),
                    ),

                    Row(
                      children: [
                        for (var i = 0; i < widget.rating; i++)
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 30,
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            backgroundColor: Colors.red.shade900
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>cart()));
                        }, child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.shopping_cart,color: Colors.white,),
                        Text('Add to cart',style: TextStyle(color: Colors.white),),
                      ],
                    )),
                  ),
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          backgroundColor: Colors.indigo
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>confirm_order()));
                        }, child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.shopping_bag_outlined,color: Colors.white,),
                            Text('Buy',style: TextStyle(color: Colors.white),),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
