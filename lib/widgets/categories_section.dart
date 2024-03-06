import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define a grid layout for categories
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 3 / 2,
      ),
      padding: const EdgeInsets.all(16),
      shrinkWrap: true, // Important to prevent infinite height error
      physics: NeverScrollableScrollPhysics(), // to disable GridView's scrolling
      itemCount: categoryData.length,
      itemBuilder: (context, index) {
        return _CategoryTile(
          title: categoryData[index]['title']!,
          imageUrl: categoryData[index]['imageUrl']!,
        );
      },
    );
  }

  // A helper widget to represent each category
  Widget _CategoryTile({required String title, required String imageUrl}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12), // Rounded corners
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset( // Use Image.asset instead of Image.network
            imageUrl,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover, // Cover the entire space of the container
          ),
          Container(
            color: Colors.black.withOpacity(0.5), // Semi-transparent overlay
            alignment: Alignment.center,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Dummy data to represent categories and their images
// The 'imageUrl' now points to local assets
final List<Map<String, String>> categoryData = [
  {'title': 'Restauration', 'imageUrl': 'assets/images/restauration.png'},
  {'title': 'Bien-être', 'imageUrl': 'assets/images/bien etre.png'}, // Correct the file name if necessary
  {'title': 'Hôtels', 'imageUrl': 'assets/images/hotels.png'},
  {'title': 'Mode', 'imageUrl': 'assets/images/mode.png'},
  {'title': 'Gaming', 'imageUrl': 'assets/images/gaming.png'},
  {'title': 'Évènement', 'imageUrl': 'assets/images/event.png'},
];
