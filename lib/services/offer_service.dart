import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Offer {
  final String name;
  final String description;

  Offer({required this.name, required this.description});

  factory Offer.fromJson(Map<String, dynamic> json) {
    return Offer(
      name: json['name'],
      description: json['description'],
    );
  }
}

class OfferService {
  Future<List<Offer>> fetchOffers() async {
    await Future.delayed(const Duration(seconds: 1));
    
    // Ici, vous pouvez remplacer les données fictives par un appel réseau réel à l'avenir
    return [
      Offer(name: "Entreprise 1", description: "Description courte 1"),
      Offer(name: "Entreprise 2", description: "Description courte 2"),
      // Ajoutez plus si nécessaire
    ];
  }
}

