// file: business_detail_screen.dart
import 'package:flutter/material.dart';

class BusinessDetailScreen extends StatefulWidget {
  final Map<String, dynamic> businessInfo;

  const BusinessDetailScreen({Key? key, required this.businessInfo}) : super(key: key);

  @override
  _BusinessDetailScreenState createState() => _BusinessDetailScreenState();
}

class _BusinessDetailScreenState extends State<BusinessDetailScreen> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  // You will need to implement methods for choosing a date and time

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.businessInfo['title']),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.businessInfo['imageUrl']),
            Text(widget.businessInfo['address']),
            // Add social networks and other business info here
            // Add a date and time picker here
            ElevatedButton(
              onPressed: () {
                // Implement reservation logic
                // Add the reservation to a global state or pass back to the reservation screen
              },
              child: Text('Make a Reservation'),
            ),
          ],
        ),
      ),
    );
  }
}
