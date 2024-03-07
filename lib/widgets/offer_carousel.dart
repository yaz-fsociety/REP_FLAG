// file: lib/widgets/offer_carousel.dart

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flag/views/business_detail_screen.dart'; // Adjusted import path based on the common conventions
import 'package:flag/views/business_manager.dart';

class OfferCarousel extends StatelessWidget {
  OfferCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 16 / 9,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
        autoPlay: true,
      ),
      items: businessList.map((business) {
        return Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BusinessDetailScreen(businessInfo: business), // Adjusted to pass Business object
                ));
              },
              child: OfferCard(
                title: business.title,
                imageUrl: business.imageUrl,
                address: business.address,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

class OfferCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String address;

  const OfferCard({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
              child: Image.asset(imageUrl, fit: BoxFit.cover), // Assuming you're using local assets
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          ListTile(
            leading: Icon(Icons.location_pin, size: 20),
            title: Text(address, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }
}


