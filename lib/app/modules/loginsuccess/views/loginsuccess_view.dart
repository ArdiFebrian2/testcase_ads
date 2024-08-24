import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/loginsuccess_controller.dart';

class LoginsuccessView extends GetView<LoginsuccessController> {
  const LoginsuccessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Image.asset(
                'assets/images/success.png',
                width: 245,
                height: 196,
              ),
            ),
          ),
          SizedBox(height: 50),
          Text(
            'Phone Number Verified',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Congratulations, your phone \nnumber has been verified. You can \nstart using the app',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          Spacer(), // Mengambil ruang kosong yang tersedia untuk mendorong tombol ke bawah
          Padding(
            padding: const EdgeInsets.only(
                bottom: 30.0), // Memberikan padding di bawah
            child: ElevatedButton(
              onPressed: () {
                Get.toNamed('/main_navigation');
                // Add your button action here
              },
              child: Text('CONTINUE'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                backgroundColor: Color(0xFF0F3759),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
