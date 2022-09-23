// To parse this JSON data, do
//
//     final studentlist = studentlistFromJson(jsonString);

import 'dart:convert';

Studentlist studentlistFromJson(String str) => Studentlist.fromJson(json.decode(str));

String studentlistToJson(Studentlist data) => json.encode(data.toJson());

class Studentlist {
    Studentlist({
        this.data,
        this.source,
    });

    List<Datum>? data;
    List<Source>? source;

    factory Studentlist.fromJson(Map<String, dynamic> json) => Studentlist(
        data: json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        source: json["source"] == null ? null : List<Source>.from(json["source"].map((x) => Source.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": data == null ? null : List<dynamic>.from(data!.map((x) => x.toJson())),
        "source": source == null ? null : List<dynamic>.from(source!.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        this.idNation,
        this.nation,
        this.idYear,
        this.year,
        this.population,
        this.slugNation,
    });

    String? idNation;
    String? nation;
    int? idYear;
    String? year;
    int? population;
    String? slugNation;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        idNation: json["ID Nation"] == null ? null : json["ID Nation"],
        nation: json["Nation"] == null ? null : json["Nation"],
        idYear: json["ID Year"] == null ? null : json["ID Year"],
        year: json["Year"] == null ? null : json["Year"],
        population: json["Population"] == null ? null : json["Population"],
        slugNation: json["Slug Nation"] == null ? null : json["Slug Nation"],
    );

    Map<String, dynamic> toJson() => {
        "ID Nation": idNation == null ? null : idNation,
        "Nation": nation == null ? null : nation,
        "ID Year": idYear == null ? null : idYear,
        "Year": year == null ? null : year,
        "Population": population == null ? null : population,
        "Slug Nation": slugNation == null ? null : slugNation,
    };
}

class Source {
    Source({
        this.measures,
        this.annotations,
        this.name,
        this.substitutions,
    });

    List<String>? measures;
    Annotations? annotations;
    String? name;
    List<dynamic>? substitutions;

    factory Source.fromJson(Map<String, dynamic> json) => Source(
        measures: json["measures"] == null ? null : List<String>.from(json["measures"].map((x) => x)),
        annotations: json["annotations"] == null ? null : Annotations.fromJson(json["annotations"]),
        name: json["name"] == null ? null : json["name"],
        substitutions: json["substitutions"] == null ? null : List<dynamic>.from(json["substitutions"].map((x) => x)),
    );

  get population => null;

    Map<String, dynamic> toJson() => {
        "measures": measures == null ? null : List<dynamic>.from(measures!.map((x) => x)),
        "annotations": annotations == null ? null : annotations!.toJson(),
        "name": name == null ? null : name,
        "substitutions": substitutions == null ? null : List<dynamic>.from(substitutions!.map((x) => x)),
    };
}

class Annotations {
    Annotations({
        this.sourceName,
        this.sourceDescription,
        this.datasetName,
        this.datasetLink,
        this.tableId,
        this.topic,
        this.subtopic,
    });

    String? sourceName;
    String? sourceDescription;
    String? datasetName;
    String? datasetLink;
    String? tableId;
    String? topic;
    String? subtopic;

    factory Annotations.fromJson(Map<String, dynamic> json) => Annotations(
        sourceName: json["source_name"] == null ? null : json["source_name"],
        sourceDescription: json["source_description"] == null ? null : json["source_description"],
        datasetName: json["dataset_name"] == null ? null : json["dataset_name"],
        datasetLink: json["dataset_link"] == null ? null : json["dataset_link"],
        tableId: json["table_id"] == null ? null : json["table_id"],
        topic: json["topic"] == null ? null : json["topic"],
        subtopic: json["subtopic"] == null ? null : json["subtopic"],
    );

    Map<String, dynamic> toJson() => {
        "source_name": sourceName == null ? null : sourceName,
        "source_description": sourceDescription == null ? null : sourceDescription,
        "dataset_name": datasetName == null ? null : datasetName,
        "dataset_link": datasetLink == null ? null : datasetLink,
        "table_id": tableId == null ? null : tableId,
        "topic": topic == null ? null : topic,
        "subtopic": subtopic == null ? null : subtopic,
    };
}
