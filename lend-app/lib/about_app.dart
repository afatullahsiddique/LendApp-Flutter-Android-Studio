import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RelativeLayout(
              children: [
                Positioned(
                  left: 0,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {},
                    tooltip: 'Back',
                  ),
                ),
                Center(
                  child: Text(
                    "About",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Center(
              child: Image.asset(
                'assets/ic_launcher.png', // Replace with your image path
                width: 159,
                height: 151,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              "লেনদোতে স্বাগতম, আপনার বিশ্বস্ত আর্থিক অংশীদার। আমরা ব্যক্তিদের এবং ছোট ব্যবসায়ের জন্য সুলভ এবং সহজলভ্য মাইক্রোক্রেডিট সমাধান প্রদানে নিবেদিত। আমাদের মিশন হল ব্যক্তিদের ক্ষমতায়ন করা এবং আর্থিক অন্তর্ভুক্তির প্রচার করা, নমনীয় ঋণের বিকল্প এবং ব্যক্তিগত সহায়তা অফার করা। আমাদের ব্যবহারকারী-বান্ধব অ্যাপ এবং স্বচ্ছ প্রক্রিয়াগুলির মাধ্যমে, আমরা ধার করা নির্ভরযোগ্য এবং সুবিধাজনক করার লক্ষ্য রাখি। আর্থিক ক্ষমতায়নের পথে আমাদের সাথে যোগ দিন এবং লেনদোরার সাথে আপনার সম্ভাবনা উন্মোচন করুন।",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RelativeLayout extends StatelessWidget {
  final List<Widget> children;

  RelativeLayout({required this.children});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: children,
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AboutScreen(),
  ));
}
