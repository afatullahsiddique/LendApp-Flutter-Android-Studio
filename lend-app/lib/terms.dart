import 'package:flutter/material.dart';

class TermsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Header with Back Button and Title
            Container(
              padding: EdgeInsets.all(16.0),
              color: Theme.of(context).primaryColor, // Replace with your primary color
              child: Row(
                children: [
                  // Back Button
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      // Add back button action here
                    },
                  ),
                  SizedBox(width: 16.0),
                  // Title
                  Text(
                    'Terms',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            // Scrollable Text Section
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    'Your terms text goes here...', // Replace with your terms text
                    style: TextStyle(
                      fontSize: 16.0,
                      height: 1.5, // This is equivalent to lineSpacingExtra in Android
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

void main() {
  runApp(MaterialApp(
    home: TermsPage(),
  ));
}
