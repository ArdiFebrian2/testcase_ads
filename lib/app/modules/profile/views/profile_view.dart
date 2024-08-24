import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style:
              GoogleFonts.overpass(fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Header
            Row(
              children: [
                // Profile Picture
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/profile.jpeg'),
                ),

                const SizedBox(width: 16),
                // User Name and Welcome Text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Lorem Ipsum',
                      style: GoogleFonts.overpass(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Welcome to MedHub',
                      style: GoogleFonts.overpass(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),
            // Menu Items
            Expanded(
              child: ListView(
                children: [
                  _buildMenuItem(
                    icon: Icons.person_outline,
                    title: 'Private Account',
                  ),
                  _buildMenuItem(
                    icon: Icons.medical_services_outlined,
                    title: 'My Consults',
                  ),
                  _buildMenuItem(
                    icon: Icons.receipt_long_outlined,
                    title: 'My orders',
                  ),
                  _buildMenuItem(
                    icon: Icons.access_time_outlined,
                    title: 'Billing',
                  ),
                  _buildMenuItem(
                    icon: Icons.help_outline,
                    title: 'Faq',
                  ),
                  _buildMenuItem(
                    icon: Icons.settings_outlined,
                    title: 'Settings',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build menu items
  Widget _buildMenuItem({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(icon, color: Colors.teal),
      title: Text(
        title,
        style: GoogleFonts.overpass(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        // Handle menu item tap here
      },
    );
  }
}
