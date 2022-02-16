// To parse this JSON data, do
//
//     final area = areaFromJson(jsonString);

import 'dart:convert';

List<Area> areaFromJson(String str) => List<Area>.from(json.decode(str).map((x) => Area.fromJson(x)));

String areaToJson(List<Area> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Area {
    Area({
        this.nombre = "",
        this.url = "",
    });

    String nombre;
    String url;

    factory Area.fromJson(Map<String, dynamic> json) => Area(
        nombre: json["nombre"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "url": url,
    };
}
