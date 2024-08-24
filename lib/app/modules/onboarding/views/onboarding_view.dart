import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        // Allow for swiping between pages
        children: [
          _buildPage(
            image: 'assets/images/onboarding1.png',
            title: 'View and buy \nMedicine online',
            description:
                'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque \nsagittis mi. Integer.',
          ),
          _buildPage(
            image:
                'assets/images/onboarding2.png', // Replace with your second image
            title: 'Online medical & \nHealthcare',
            description:
                'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque \nsagittis mi. Integer.',
          ),
        ],
      ),
    );
  }

  Widget _buildPage(
      {required String image,
      required String title,
      required String description}) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 40), // For status bar space
          // Illustration
          Image.asset(
            image,
            height: 250,
          ),
          // Title and Description
          Column(
            children: [
              Text(
                title,
                style: GoogleFonts.overpass(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF0F3759),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                description,
                style: GoogleFonts.overpass(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          // Skip, Dots, Next
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Skip button
              TextButton(
                onPressed: () {
                  // Handle skip logic
                },
                child: Text(
                  'Skip',
                  style: GoogleFonts.overpass(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
              // Page indicator dots
              // Note: You may want to use a custom widget or package for dynamic dots
              Row(
                children: [
                  Icon(Icons.circle, size: 8, color: Colors.grey),
                  SizedBox(width: 8),
                  Icon(Icons.circle, size: 8, color: Colors.green),
                  SizedBox(width: 8),
                  Icon(Icons.circle, size: 8, color: Colors.grey),
                  SizedBox(width: 8),
                  Icon(Icons.circle, size: 8, color: Colors.grey),
                ],
              ),
              // Next button
              TextButton(
                onPressed: () {
                  Get.toNamed('/welcome');
                  // Handle next logic
                },
                child: Text(
                  'Next',
                  style: GoogleFonts.overpass(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
