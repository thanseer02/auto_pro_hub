import 'package:flutter/material.dart';
class rentbikeads extends StatefulWidget {
  const rentbikeads({super.key});

  @override
  State<rentbikeads> createState() => _rentbikeadsState();
}

class _rentbikeadsState extends State<rentbikeads> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:  Container(
          height: 200,
          child: PageView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/rental/rb1.png'),fit: BoxFit.fill),
                    color: Color(0xffADDDFB),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/rental/rb.png'),fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/rental/rb2.png'),fit: BoxFit.fill),
                    color: Color(0xffADDDFB),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),

            ],
          ),
        )
    );
  }
}
