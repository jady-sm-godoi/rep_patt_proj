class SkwModel {
  final String name;
  final String height;
  final String mass;
  final String hair_color;
  final String skin_color;
  final String eye_color;
  final String birth_year;
  final String gender;
  final String homeworld;
  final List films;
  final List species;
  final List vehicles;
  final List starships;
  final String created;
  final String edited;
  final String url;
  SkwModel({
    required this.name,
    required this.height,
    required this.mass,
    required this.hair_color,
    required this.skin_color,
    required this.eye_color,
    required this.birth_year,
    required this.gender,
    required this.homeworld,
    required this.films,
    required this.species,
    required this.vehicles,
    required this.starships,
    required this.created,
    required this.edited,
    required this.url,
  });

  factory SkwModel.fromJson(Map json) {
    return SkwModel(
      name: json['name'],
      height: json['height'],
      mass: json['mass'],
      hair_color: json['hair_color'],
      skin_color: json['skin_color'],
      eye_color: json['eye_color'],
      birth_year: json['birth_year'],
      gender: json['gender'],
      homeworld: json['homeworld'],
      films: json['films'],
      species: json['species'],
      vehicles: json['vehicles'],
      starships: json['starships'],
      created: json['created'],
      edited: json['edited'],
      url: json['url'],
    );
  }
}
