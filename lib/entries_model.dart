class EntriesModel {
  String api;
  String description;

  EntriesModel({required this.api, required this.description});

  EntriesModel.fromJson(Map json)
      : api = json['API'],
        description = json['Description'];
}
