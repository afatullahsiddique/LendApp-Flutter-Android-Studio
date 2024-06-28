import 'package:flutter/material.dart';

class ApplyLoanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Loan Header
              Row(
                children: [
                  // Back Button
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {},
                    tooltip: 'Back',
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    "Loan",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              // Loan Amount
              Text(
                "Loan Amount (৳)",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "2000",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              SizedBox(height: 8.0),
              // Loan Duration
              Text(
                "Loan 7 Days",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 16.0),
              // Loan Details
              Text(
                "Amount received",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                "৳1200",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "Total Fee",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                "৳800",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "Total Amount",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                "৳2000",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "Repaid Amount",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                "৳2000",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16.0),
              // Payment Method
              Text(
                "Payment Method",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                padding: EdgeInsets.only(bottom: 16.0),
                child: DropdownButtonFormField<String>(
                  items: [
                    DropdownMenuItem(
                      value: 'Method1',
                      child: Text('Method1'),
                    ),
                    DropdownMenuItem(
                      value: 'Method2',
                      child: Text('Method2'),
                    ),
                  ],
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              // Payment Account Number
              Text(
                "Payment Account Number",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 8.0),
              TextField(
                decoration: InputDecoration(
                  hintText: "Please input",
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 16.0),
              // Confirm Payment Account Number
              Text(
                "Confirm payment account number",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 8.0),
              TextField(
                decoration: InputDecoration(
                  hintText: "Please input",
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 16.0),
              // Agreement Checkbox
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (bool? value) {},
                  ),
                  Flexible(
                    child: Text(
                      "I agree agreement of Loan Service and Privacy",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              // Confirm Loan Button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 14.0),
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: Text("Confirm Loan"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ApplyLoanScreen(),
  ));
}
