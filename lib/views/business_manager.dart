import 'package:flag/views/business.dart'; // Ensure this path matches your project structure

final List<Business> businessList = [
  Business(
    title: "Schwartz Coffee",
    imageUrl: "assets/images/cards/schwartz coffee.png",
    address: "123 Main St, Anytown",
    keywords: ["Coffee", "Organic", "Pastries"], // Updated to keywords list
    contentImages: [
      "assets/images/content/schwartz1.png",
      "assets/images/content/schwartz2.png",
    ], // Example content images, these fields are optional
    instagramUsername: "@schwartzcoffee",
    tiktokUsername: "@schwartzcoffee",
    offerDescription: "Enjoy a cozy atmosphere and the best organic coffee in town.",
  ),
  Business(
    title: "Dragon Sushi",
    imageUrl: "assets/images/cards/dragon sushi.png",
    address: "456 Elm St, Sometown",
    keywords: ["Sushi", "Japanese", "Fresh Fish"],
    contentImages: [
      "assets/images/content/dragon1.png",
      "assets/images/content/dragon2.png",
    ],
    instagramUsername: "@dragonsushi",
    tiktokUsername: "@dragonsushi",
    offerDescription: "Traditional and modern sushi dishes prepared with the freshest ingredients.",
  ),
  Business(
    title: "Harmony Hotel",
    imageUrl: "assets/images/cards/harmony hotel.png",
    address: "789 Pine St, Yourtown",
    keywords: ["Luxury", "Comfort", "Spa"],
    instagramUsername: "@harmonyhotel",
    tiktokUsername: "@harmonyhotel",
    offerDescription: "Experience unparalleled luxury and relaxation at Harmony Hotel.",
  ),
  Business(
    title: "Avitane Massage",
    imageUrl: "assets/images/cards/avitane massage.png",
    address: "1012 Oak St, Theirtown",
    keywords: ["Massage", "Wellness", "Therapy"],
    instagramUsername: "@avitanemassage",
    tiktokUsername: "@avitanemassage",
    offerDescription: "Revitalize your body and soul with our professional massage services.",
  ),
  // Add more businesses as needed
];

