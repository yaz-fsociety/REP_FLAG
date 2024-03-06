import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset('assets/images/F logo.png', fit: BoxFit.contain), // Assurez-vous que le chemin de votre logo est correct
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            // Ajoutez ici la logique pour la recherche
          },
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(4.0),
        child: Container(
          color: Colors.grey, // La couleur de la stroke
          height: 0.8, // L'épaisseur de la ligne de séparation
        ),
      ),
      elevation: 1, // Enlève l'ombre de l'AppBar
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 0.5); // Ajoutez la hauteur de la ligne de séparation à la hauteur de l'AppBar
}
