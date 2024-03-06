// home_screen.dart
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flag/widgets/custom_app_bar.dart';
import 'package:flag/widgets/custom_bottom_nav_bar.dart';
import 'package:flag/views/reservation_screen.dart';
import 'package:flag/views/profile_screen.dart';
import 'package:flag/views/message_screen.dart';
import 'package:flag/widgets/categories_section.dart';
import 'package:flag/widgets/offer_carousel.dart'; // Importez le nouveau widget

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePageContent(),
    ReservationScreen(),
    ProfileScreen(),
    MessageScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Données fictives pour le carousel
    final List<Map<String, dynamic>> offers = [
      {
        'imageUrl': 'assets/images/cards/schwartz coffee.png', // Chemin vers votre image d'actif
        'address': '123 Rue de la République, Paris',
      },
      // Ajoutez d'autres offres ici...
    ];

    return ListView(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('Les meilleures adresses', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),
        OfferCarousel(offers: offers), // Utilisez le nouveau widget OfferCarousel ici
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('Autour de moi', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),
        Container(
          height: 200,
          child: GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(48.8566, 2.3522),
              zoom: 15,
            ),
          ),
        ),
        const SizedBox(height: 30),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
          child: Text('Offres du moment', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),
        CategoriesSection(),
      ],
    );
  }
}
