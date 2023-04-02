
//CREACION CLASE PERSONAJE CON PROPIEDADES
class Personaje {
  final String name;
  final String thumbnail;
  final String image;
  final String description;
  final int comicsCount;
  final int seriesCount;
  final int storiesCount;
  final int eventsCount;
  final List<String> firstThreeSeriesNames;

  Personaje({
    required this.name,
    required this.thumbnail,
    required this.image,
    required this.description,
    required this.comicsCount,
    required this.seriesCount,
    required this.storiesCount,
    required this.eventsCount,
    required this.firstThreeSeriesNames,

  });


  //METODO QUE MAPEA Y DEVUELVE UN JSON A PERSONAJE
  factory Personaje.fromJson(Map<String, dynamic> json) {
    final seriesNames = (json['series']['items'] as List<dynamic>)
    .map<String>((series) => series['name'] as String)
    .take(3)
    .toList();

    return Personaje(
      name: json['name'] as String,
      thumbnail: json['thumbnail']['path'] +
          '.' +
          json['thumbnail']['extension'] as String,
      image: '${json['thumbnail']['path']}.${json['thumbnail']['extension']}'as String,
      description: json['description'] as String,
      comicsCount: json['comics']['available'] as int,
      seriesCount: json['series']['available'] as int,
      storiesCount: json['stories']['available'] as int,
      eventsCount: json['events']['available'] as int,
      firstThreeSeriesNames: seriesNames,
      //se inicializan todas las propiedades de la intancia
    );
  }
}
