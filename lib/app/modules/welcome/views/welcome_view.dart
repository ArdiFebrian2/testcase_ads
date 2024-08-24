import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define button width
    final double buttonWidth =
        MediaQuery.of(context).size.width * 0.8; // 80% of screen width
    final double borderRadius = 30.0; // Set your desired border radius

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            // Image Placeholder
            Image.asset(
              'assets/images/welcome.png', // replace with your image path
              height: 258,
              width: 258,
            ),
            const SizedBox(height: 20),
            // Welcome Text
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: GoogleFonts.overpass(fontSize: 24, color: Colors.black),
                children: const [
                  TextSpan(text: 'Welcome to '),
                  TextSpan(
                    text: 'MedHub',
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            // Subtitle
            Text(
              'Do you want some help with your health to get better life?',
              textAlign: TextAlign.center,
              style: GoogleFonts.overpass(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 40),
            // Sign Up with Email Button
            SizedBox(
              width: buttonWidth,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0F3759),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                ),
                child: Text(
                  'SIGN UP WITH EMAIL',
                  style:
                      GoogleFonts.overpass(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Continue with Facebook Button
            SizedBox(
              width: buttonWidth,
              child: OutlinedButton.icon(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                ),
                icon: const Icon(Icons.facebook, color: Colors.blueGrey),
                label: Text(
                  'CONTINUE WITH FACEBOOK',
                  style: GoogleFonts.overpass(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Continue with Gmail Button
            SizedBox(
              width: buttonWidth,
              child: OutlinedButton.icon(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                ),
                icon: const Icon(Icons.mail, color: Colors.red),
                label: Text(
                  'CONTINUE WITH GMAIL',
                  style: GoogleFonts.overpass(fontSize: 16),
                ),
              ),
            ),
            const Spacer(),
            // Login Text
            TextButton(
              onPressed: () {
                Get.toNamed('/login');
              },
              child: Text(
                'LOGIN',
                style: GoogleFonts.overpass(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
