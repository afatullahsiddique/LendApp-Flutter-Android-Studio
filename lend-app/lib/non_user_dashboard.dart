import 'package:flutter/material.dart';

class MyAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header with image and edit button
          Container(
            height: 200,
            width: double.infinity,
            child: Stack(
              children: [
                // Add your header content here
              ],
            ),
          ),
          // User Info Container
          Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/ic_launcher.png'), // Replace with your asset image
                  backgroundColor: Colors.orangeAccent,
                ),
                SizedBox(height: 8.0),
                Text(
                  'LENDDO',
                  style: TextStyle(
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
              margin: EdgeInsets.only(top: 8.0),
              padding: EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  _buildOptionItem(context, 'Login now', Icons.more_horiz, () {
                    // Login button action
                  }),
                  _buildOptionItem(context, 'Terms', Icons.more_horiz, () {
                    // Terms button action
                  }),
                  _buildOptionItem(context, 'About', Icons.more_horiz, () {
                    // About button action
                  }),
                  _buildOptionItem(context, 'Online Services', Icons.more_horiz, () {
                    // Online Services button action
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.all(16.0),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildBottomNavItem(context, 'LOAN', 'home', Colors.black, Colors.black),
              _buildBottomNavItem(context, 'BILL', 'bill', Colors.grey, Colors.grey),
              _buildBottomNavItem(context, 'ME', 'user', Colors.orangeAccent, Colors.orangeAccent),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionItem(BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return ListTile(
      contentPadding: EdgeInsets.all(8.0),
      title: Text(
        title,
        style: TextStyle(fontSize: 16.0),
      ),
      trailing: Icon(icon),
      onTap: onTap,
    );
  }

  Widget _buildBottomNavItem(BuildContext context, String title, String assetName, Color iconColor, Color textColor) {
    return GestureDetector(
      onTap: () {
        // Handle navigation
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/$assetName.png', // Replace with your asset image
            width: 24,
            height: 24,
            color: iconColor,
          ),
          SizedBox(height: 4.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 12.0,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
