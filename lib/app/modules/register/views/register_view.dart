import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Get.back();
            // Add your back navigation logic here
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create your account",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 40),
            Text(
              "Your Name",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Lorem Ipsum",
                border: UnderlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Mobile Number",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "+62 821 39 488 953",
                border: UnderlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: UnderlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: UnderlineInputBorder(),
                suffixIcon: Icon(Icons.visibility_outlined, color: Colors.grey),
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('/verifyotp');
                  // Add your account creation logic here
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 80.0),
                  backgroundColor: Color(0xFF0F3759),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  "CREATE ACCOUNT",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Get.toNamed('/login');
                  // Add your login navigation logic here
                },
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
