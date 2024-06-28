import 'package:flutter/material.dart';

class AuthorizationDescriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title Text
            Text(
              'Authorization', // Replace with localization if needed: AppLocalizations.of(context)!.authorization
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            // Description Text in ScrollView
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  'Description text goes here...', // Replace with the actual description text or localization
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5, // lineSpacingExtra equivalent
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            // Agree and Disagree Buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle disagree action
                    },
                    child: Text('Disagree'), // Replace with localization if needed: AppLocalizations.of(context)!.disagree
                  ),
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle agree action
                    },
                    child: Text('Agree'), // Replace with localization if needed: AppLocalizations.of(context)!.agree
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AuthorizationDescriptionScreen(),
  ));
}
