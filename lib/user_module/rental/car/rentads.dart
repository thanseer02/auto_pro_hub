import 'package:flutter/material.dart';
class rentads extends StatefulWidget {
  const rentads({super.key});

  @override
  State<rentads> createState() => _rentadsState();
}

class _rentadsState extends State<rentads> {
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
                    image: DecorationImage(image: AssetImage('assets/rental/rc1.png'),fit: BoxFit.fill),
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
                    image: DecorationImage(image: AssetImage('assets/rental/rc.png'),fit: BoxFit.cover),
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
                    image: DecorationImage(image: AssetImage('assets/rental/rc2.png'),fit: BoxFit.fill),
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
                    image: DecorationImage(image: AssetImage('assets/home/off1.png'),fit: BoxFit.fill),
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
