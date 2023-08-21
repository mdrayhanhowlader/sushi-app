import 'package:dribble/components/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 136, 69, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 25,
            ),
            // shop name
            Text(
              'SUSHI MAN',
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 28, color: Colors.white),
            ),

            const SizedBox(
              height: 25,
            ),

            // icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/sushi1.png'),
            ),

            const SizedBox(
              height: 25,
            ),

            // title
            Text(
              'The Test Of Japanese Food',
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 44, color: Colors.white),
            ),

            const SizedBox(
              height: 10,
            ),

            // subtitle
            Text(
              'Feel the taste of the most popular Japanese food from anywhere and anytime.',
              style: TextStyle(color: Colors.grey.shade200, height: 2),
            ),

            const SizedBox(
              height: 25,
            ),

            // get started button
            MyButton(
              text: "Get Started",
              onTap: () {
                // goto menu page
                Navigator.pushNamed(context, '/menupage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
