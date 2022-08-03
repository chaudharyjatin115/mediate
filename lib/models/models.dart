class AudioCategory {
  final String coverImage;
  final String name;
  final int length;
  final String category;
  final String audioUrl;

  AudioCategory(
      this.coverImage, this.name, this.length, this.category, this.audioUrl);
}

class User {
  String? name;
}

class AudioListCategory {
  final String coverListImage;
  final List<AudioCategory> audioCatList;
  final String coverListName;
  final double playlistDuration;
  AudioListCategory({
    required this.coverListImage,
    required this.audioCatList,
    required this.coverListName,
    required this.playlistDuration,
  });
}
