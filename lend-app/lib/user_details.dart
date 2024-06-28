import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Back Arrow
            GestureDetector(
              onTap: () {
                // Add your back button action here
              },
              child: Image.asset(
                'assets/left_arrow.png', // Replace with your asset image path
                width: 24.0, // Equivalent to wrap_content
                height: 24.0, // Equivalent to wrap_content
              ),
            ),
            SizedBox(height: 16.0),
            // User Image
            Center(
              child: Image.asset(
                'assets/profile_image.png', // Replace with your asset image path
                width: 100.0,
                height: 100.0,
              ),
            ),
            SizedBox(height: 16.0),
            // Full Name
            Text(
              '***',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            // Phone Number
            Text(
              '***',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            // Email
            Text(
              '***',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: UserProfilePage(),
  ));
}
