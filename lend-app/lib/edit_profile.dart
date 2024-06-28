import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header with image and edit button
            Container(
              height: 200.0,
              child: Stack(
                children: [
                  // Cover picture
                  Positioned.fill(
                    child: Image.asset(
                      'assets/placeholder.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Edit cover picture button
                  Positioned(
                    top: 16.0,
                    left: 16.0,
                    child: IconButton(
                      icon: Icon(Icons.edit, color: Colors.orangeAccent),
                      onPressed: () {},
                    ),
                  ),
                  // Save profile button
                  Positioned(
                    top: 16.0,
                    right: 16.0,
                    child: IconButton(
                      icon: Icon(Icons.save, color: Colors.deepOrange),
                      onPressed: () {},
                    ),
                  ),
                  // User info container
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage('assets/ic_launcher.png'),
                              ),
                              // Edit profile picture button
                              Positioned(
                                child: IconButton(
                                  icon: Icon(Icons.edit, color: Colors.black),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            '***',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Form container
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Full Name field
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                    ),
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(height: 8.0),
                  // Username field
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                    ),
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(height: 8.0),
                  // Email field
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 8.0),
                  // Phone Number field
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ],
              ),
            ),
            // Delete container
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Delete My Account',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
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
