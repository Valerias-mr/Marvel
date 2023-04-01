class Personaje {
  final String name;
  final String thumbnail;
  final String image;
  final String description;
  final int comicsCount;
  final int seriesCount;
  final int storiesCount;
  final int eventsCount;

  Personaje({
    required this.name,
    required this.thumbnail,
    required this.image,
    required this.description,
    required this.comicsCount,
    required this.seriesCount,
    required this.storiesCount,
    required this.eventsCount,
  });

  factory Personaje.fromJson(Map<String, dynamic> json) {
    final seriesNames = json['series']['items']
        .map((series) => series['name'] as String)
        .take(3)
        .toList();
    return Personaje(
      name: json['name'] as String,
      thumbnail: json['thumbnail']['path'] +
          '.' +
          json['thumbnail']['extension'] as String,
      image: '${json['thumbnail']['path']}.${json['thumbnail']['extension']}'
          as String,
      description: json['description'] as String,
      comicsCount: json['comics']['available'] as int,
      seriesCount: json['series']['available'] as int,
      storiesCount: json['stories']['available'] as int,
      eventsCount: json['events']['available'] as int,
    );
  }
}
