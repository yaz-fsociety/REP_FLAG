// fichier: widgets/offer_carousel.dart
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:lib/views/business_detail_screen.dart'; // Assurez-vous d'importer le chemin correct

class OfferCarousel extends StatelessWidget {
  final List<Map<String, dynamic>> offers;

  const OfferCarousel({
    Key? key,
    required this.offers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 16 / 9,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
        autoPlay: true,
      ),
      items: offers.map((offer) {
        return Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BusinessDetailScreen(
                    // Supposons que BusinessDetailScreen attend un 'imageUrl' et un 'address'
                    imageUrl: offer['imageUrl'],
                    address: offer['address'],
                    // Vous pouvez ajouter plus d'arguments si votre écran de détails en nécessite
                  ),
                ));
              },
              child: OfferCard(
                imageUrl: offer['imageUrl'],
                address: offer['address'],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

class OfferCard extends StatelessWidget {
  final String imageUrl;
  final String address;

  const OfferCard({
    Key? key,
    required this.imageUrl,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.location_pin,
              size: 20,
            ),
            title: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                address,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
