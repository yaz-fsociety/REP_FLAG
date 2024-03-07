import 'package:flutter/material.dart';
import 'package:flag/views/business.dart';


class BusinessDetailScreen extends StatefulWidget {
  final Business businessInfo;

  const BusinessDetailScreen({Key? key, required this.businessInfo}) : super(key: key);

  @override
  _BusinessDetailScreenState createState() => _BusinessDetailScreenState();
}

class _BusinessDetailScreenState extends State<BusinessDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final businessInfo = widget.businessInfo;

    return Scaffold(
      appBar: AppBar(
        title: Text(businessInfo.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(businessInfo.imageUrl, height: 250, width: double.infinity, fit: BoxFit.cover),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Adresse: ${businessInfo.address}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text('Description: ${businessInfo.offerDescription}', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),
                  if (businessInfo.keywords != null) 
                    Wrap(
                      spacing: 8.0,
                      children: businessInfo.keywords!.map((keyword) => Chip(label: Text(keyword))).toList(),
                    ),
                  SizedBox(height: 10),
                  if (businessInfo.instagramUsername != null)
                    Text('Instagram: ${businessInfo.instagramUsername}'),
                  if (businessInfo.tiktokUsername != null)
                    Text('TikTok: ${businessInfo.tiktokUsername}'),
                  SizedBox(height: 10),
                  // Display content images if available
                  if (businessInfo.contentImages != null)
                    for (var imagePath in businessInfo.contentImages!)
                      Container(
                        margin: EdgeInsets.only(bottom: 8.0),
                        child: Image.asset(imagePath, width: double.infinity, fit: BoxFit.cover),
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




