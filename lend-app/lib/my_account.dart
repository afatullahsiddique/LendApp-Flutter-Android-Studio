import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              // Header with image and edit button
              Container(
                width: double.infinity,
                height: 200.0,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/placeholder.png',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 16.0,
                      right: 16.0,
                      child: IconButton(
                        icon: Icon(Icons.edit, color: Colors.black),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              // User Info Container
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/placeholder.png'),
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
              // Options List
              Expanded(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      buildOption(context, 'Terms'),
                      buildOption(context, 'About'),
                      buildOption(context, 'Online Services'),
                      buildOption(context, 'Logout'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Bottom Navigation
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildBottomNavItem(context, 'assets/home.png', 'LOAN', Colors.orangeAccent),
                  buildBottomNavItem(context, 'assets/bill.png', 'Community', Colors.grey),
                  buildBottomNavItem(context, 'assets/user.png', 'ME', Colors.orangeAccent),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        // Handle the tap
      },
      child: Container(
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.symmetric(vertical: 4.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }

  Widget buildBottomNavItem(BuildContext context, String iconPath, String label, Color color) {
    return GestureDetector(
      onTap: () {
        // Handle the tap
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            iconPath,
            width: 24.0,
            height: 24.0,
            color: color,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
