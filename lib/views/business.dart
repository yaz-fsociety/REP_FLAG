class Business {
  final String title;
  final String imageUrl;
  final String address;
  final List<String> keywords; // Using a list for keywords
  final String instagramUsername;
  final String tiktokUsername;
  final String offerDescription;
  final List<String>? contentImages; // Nullable since it's not required

  Business({
    required this.title,
    required this.imageUrl,
    required this.address,
    required this.keywords,
    required this.instagramUsername,
    required this.tiktokUsername,
    required this.offerDescription,
    this.contentImages,
  });
}
