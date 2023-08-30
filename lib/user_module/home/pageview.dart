import 'package:flutter/material.dart';
class PageviewExample extends StatelessWidget {
  const PageviewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        height: 200,
        child: PageView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/home/of.png'),fit: BoxFit.cover),
                  color: Color(0xffADDDFB),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/home/off.png'),fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/home/of2.png'),fit: BoxFit.cover),
                  color: Color(0xffADDDFB),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/home/off1.png'),fit: BoxFit.cover),
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
