class PokemonModel {
  String name;
  String img;
  List<String> type;
  String numPokemon;
  String heigth;
  String weight;
  String candy;
  String egg;
  List<String> weaknesses;

  PokemonModel({
    required this.name,
    required this.img,
    required this.type,
    required this.numPokemon,
    required this.heigth,
    required this.weight,
    required this.candy,
    required this.egg,
    required this.weaknesses,
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) => PokemonModel(
        name: json["name"],
        img: json["img"],
        type: List<String>.from(json["type"].map((e) => e)),
        numPokemon: json["num"],
        heigth: json["height"],
        weight: json["weight"],
        candy: json["candy"],
        egg: json["egg"],
        weaknesses: List<String>.from(json["weaknesses"].map((e) => e)),
      );
}
