class Experience {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final String openHours;
  final String instagramProfile;
  final String tiktokProfile;

  Experience({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.openHours,
    required this.instagramProfile,
    required this.tiktokProfile,
  });

  factory Experience.fromMap(Map<String, dynamic> data) {
    return Experience(
      id: data['id'] ?? '',
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      imageUrl: data['imageUrl'] ?? '',
      openHours: data['openHours'] ?? '',
      instagramProfile: data['instagramProfile'] ?? '',
      tiktokProfile: data['tiktokProfile'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
      'openHours': openHours,
      'instagramProfile': instagramProfile,
      'tiktokProfile': tiktokProfile,
    };
  }
}