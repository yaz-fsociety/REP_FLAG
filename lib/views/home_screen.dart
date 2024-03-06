import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flag/widgets/custom_app_bar.dart';
import 'package:flag/widgets/custom_bottom_nav_bar.dart';
import 'package:flag/views/reservation_screen.dart';
import 'package:flag/views/profile_screen.dart';
import 'package:flag/views/message_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePageContent(), // Define this widget to include your carousel and Google Map
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
      appBar: const CustomAppBar(title: 'Flag'),
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
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('Nos incontournables', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        ),
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            autoPlay: true,
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(
                    color: Color(0xFF0E2EBC),
                  ),
                  child: Text('text $i', style: const TextStyle(fontSize: 16.0)),
                );
              },
            );
          }).toList(),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('Autour de moi', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        ),
        Container(
          height: 200,
          child: GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(48.8566, 2.3522), // Coordinates of Paris
              zoom: 15,
            ),
          ),
        ),
      ],
    );
  }
}

// The Offer class and other necessary widgets should be defined according to your app's needs






