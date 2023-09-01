import 'package:flutter/material.dart';
class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
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
            child: Text('Payment',style: TextStyle(color: Colors.black54,fontSize: 25),),
          ),
          actions: [
          ],

        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Text('Payment Options:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black45),),

    ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    IconButton(
                      style: IconButton.styleFrom(
                        foregroundColor: Colors.white10
                      ),
                        onPressed: (){},
                        icon: Container(
                            height: 70,
                            width: 70,
                            child: Image(image: AssetImage('assets/payment/g1.png'),fit: BoxFit.contain,))),
                    IconButton(
                        style: IconButton.styleFrom(
                            foregroundColor: Colors.white10
                        ),
                        onPressed: (){},
                        icon: Container(
                            height: 70,
                            width: 70,
                            child: Image(image: AssetImage('assets/payment/phonepay.png'),fit: BoxFit.contain,))),
                    IconButton(
                        style: IconButton.styleFrom(
                            foregroundColor: Colors.white10
                        ),
                        onPressed: (){},
                        icon: Container(
                            height: 70,
                            width: 70,
                            child: Image(image: AssetImage('assets/payment/Paytm.png'),fit: BoxFit.contain,))),

                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Radio(
                    autofocus: true,
                    activeColor: Colors.indigo,
                    value: 2,
                    groupValue: selectedOption,
                    onChanged: handleRadioValueChange,
                  ),
                  Text('Cash on delivery',style: TextStyle(fontWeight: FontWeight.w500),),

                ],
              ),
              Divider(),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text('Price Details:',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black45),),

              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text('Price (1 item):',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black45),),

                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text('\$599',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black45),),

                  ),


                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text('Delivery charge:',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black45),),

                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text('Free',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.green),),

                  ),


                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text('Amount Payable:',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black45),),

                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text('\$599',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.green),),

                  ),


                ],
              ),
              SizedBox(
                height: 50,
              ),


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
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>payment()));
                      }, child: Text('Order',style: TextStyle(color: Colors.white,fontSize: 18),)),
                ),
              ),



            ]
        ),
      ),
      

    );
  }
}
