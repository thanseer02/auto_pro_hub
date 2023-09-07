import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class confirm_order extends StatefulWidget {
  const confirm_order({super.key});

  @override
  State<confirm_order> createState() => _confirm_orderState();
}

class _confirm_orderState extends State<confirm_order> {
  int quantity=1;
  void add(){
      quantity=quantity+1;
  }
  void sub(){
    quantity=quantity-1;

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
          'Confirm Order',
          style: TextStyle(color: Colors.black45),
        ),

      ),
      body: Container(
        height:double.infinity,
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: Image(
                          image: AssetImage('assets/acc/ad/ex1.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: Image(
                          image: AssetImage('assets/acc/ad/ex1.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: Image(
                          image: AssetImage('assets/acc/ad/ex1.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: Image(
                          image: AssetImage('assets/acc/ad/ex1.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),

                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Quantity',style: TextStyle(fontSize: 22),),
                    IconButton(onPressed: (){
                      setState(() {
                        add();
                      });
                    }, icon:Icon( Icons.add,color: Colors.black45,),),
                    Container(
                      height:40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(
                              color: Colors.black45
                          )
                      ),
                      child: Center(child: Text('${quantity}',style: TextStyle(fontSize: 22),)),
                    ),
                    IconButton(onPressed: (){
                      setState(() {
                        sub();
                      });
                    }, icon:Icon( CupertinoIcons.minus,color: Colors.black45)),

                  ],
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Price ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        '${index+2}0 off',
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
                        '\$${index+2}0',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black45,
                          decoration: TextDecoration.lineThrough,),
                      ),
                    ),
                    Text(
                      '${index+2}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 32),
                    ),
                  ],
                ),


              ],
            ),
          );
        }),
      ),
    );
  }
}
