import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Make the column scrollable
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 80.0, right: 80, bottom: 80, top: 160),
              child: Image.asset('lib/images/avocado.png'),
            ),
            Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  "We deliver groceries at your doorstep",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSerif(
                      fontSize: 16, fontWeight: FontWeight.bold),
                )),

            Text(
              "Fresh items everyday",
              style: TextStyle(color: Colors.grey[600]),
            ),

            const SizedBox(height: 24), // Adjust spacingR

            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomePage();
                  },
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(24),
                child: const Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20), // Adjust spacing
          ],
        ),
      ),
    );
  }
}
