import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              // ImageView for the logo
              Padding(
                padding: const EdgeInsets.only(top: 32.0, bottom: 32.0),
                child: Center(
                  child: Image.asset(
                    'assets/poster_home.png',
                    key: Key('logoImageView'),
                  ),
                ),
              ),
              // TextView for Loan Amount Label
              Text(
                'Request to Loan (৳)',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                ),
                key: Key('tvLoanAmountLabel'),
              ),
              // TextView for Loan Amount
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  '12,000',
                  style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.orangeAccent,
                  ),
                  key: Key('tvLoanAmount'),
                ),
              ),
              // SeekBar for Loan Amount
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                child: Slider(
                  value: 20,
                  min: 0,
                  max: 200,
                  onChanged: (value) {},
                  key: Key('seekBarLoanAmount'),
                ),
              ),
              // TextView for Loan Length
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Loan Length(days): 91-365',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                  key: Key('tvLoanLength'),
                ),
              ),
              // Confirm Button
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Confirm'),
                  key: Key('confirm_btn'),
                ),
              ),
              Spacer(),
              // Bottom Navigation
              Container(
                key: Key('bottomNavigation'),
                color: Colors.white,
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Home Button
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.home, color: Colors.orangeAccent),
                        Text(
                          'LOAN',
                          style: TextStyle(
                            color: Colors.orangeAccent,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                    // Bill Button
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.receipt, color: Colors.grey),
                        Text(
                          'Community',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                    // Me Button
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.person, color: Colors.grey),
                        Text(
                          'ME',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
