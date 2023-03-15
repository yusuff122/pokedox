// To parse this JSON data, do
//
//     final pokeModel = pokeModelFromJson(jsonString);

import 'dart:convert';

PokeModel pokeModelFromJson(String str) => PokeModel.fromJson(json.decode(str));

String pokeModelToJson(PokeModel data) => json.encode(data.toJson());

class PokeModel {
    PokeModel({
        this.id,
        this.num,
        this.name,
        this.img,
        this.type,
        this.height,
        this.weight,
        this.candy,
        this.candyCount,
        this.egg,
        this.spawnChance,
        this.avgSpawns,
        this.spawnTime,
        this.multipliers,
        this.weaknesses,
        this.prevEvolution,
        this.nextEvolution,
    });

    int? id;
    String? num;
    String? name;
    String? img;
    List<String>? type;
    String? height;
    String? weight;
    String? candy;
    int? candyCount;
    String? egg;
    double? spawnChance;
    double? avgSpawns;
    String? spawnTime;
    List<double>? multipliers;
    List<String>? weaknesses;
    List<Evolution>? prevEvolution;
    List<Evolution>? nextEvolution;

    factory PokeModel.fromJson(Map<String, dynamic> json) => PokeModel(
        id: json["id"],
        num: json["num"],
        name: json["name"],
        img: json["img"],
        type: json["type"] == null ? [] : List<String>.from(json["type"]!.map((x) => x)),
        height: json["height"],
        weight: json["weight"],
        candy: json["candy"],
        candyCount: json["candy_count"],
        egg: json["egg"],
        spawnChance: json["spawn_chance"]?.toDouble(),
        avgSpawns: json["avg_spawns"]?.toDouble(),
        spawnTime: json["spawn_time"],
        multipliers: json["multipliers"] == null ? [] : List<double>.from(json["multipliers"]!.map((x) => x?.toDouble())),
        weaknesses: json["weaknesses"] == null ? [] : List<String>.from(json["weaknesses"]!.map((x) => x)),
        prevEvolution: json["prev_evolution"] == null ? [] : List<Evolution>.from(json["prev_evolution"]!.map((x) => Evolution.fromJson(x))),
        nextEvolution: json["next_evolution"] == null ? [] : List<Evolution>.from(json["next_evolution"]!.map((x) => Evolution.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "num": num,
        "name": name,
        "img": img,
        "type": type == null ? [] : List<dynamic>.from(type!.map((x) => x)),
        "height": height,
        "weight": weight,
        "candy": candy,
        "candy_count": candyCount,
        "egg": egg,
        "spawn_chance": spawnChance,
        "avg_spawns": avgSpawns,
        "spawn_time": spawnTime,
        "multipliers": multipliers == null ? [] : List<dynamic>.from(multipliers!.map((x) => x)),
        "weaknesses": weaknesses == null ? [] : List<dynamic>.from(weaknesses!.map((x) => x)),
        "prev_evolution": prevEvolution == null ? [] : List<dynamic>.from(prevEvolution!.map((x) => x.toJson())),
        "next_evolution": nextEvolution == null ? [] : List<dynamic>.from(nextEvolution!.map((x) => x.toJson())),
    };
}

class Evolution {
    Evolution({
        this.num,
        this.name,
    });

    String? num;
    String? name;

    factory Evolution.fromJson(Map<String, dynamic> json) => Evolution(
        num: json["num"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "num": num,
        "name": name,
    };

    @override
  String toString() {
    // TODO: implement toString
    return '$name';
  }
}
