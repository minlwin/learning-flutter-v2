typedef Division = ({
  int id,
  String name,
});

Division divisionFromJson(Map<String, dynamic> json) {
  return (
    id: json['id'],
    name: json['name'],
  );
}

typedef District = ({
  int id,
  String name,
  Division division,
});

District districtFromJson(Map<String, dynamic> json) {
  return (
    id: json["id"],
    name: json["name"],
    division: divisionFromJson(json["division"])
  );
}

typedef Township = ({
  int id,
  String name,
  District district,
});

Township townshipFromJson(Map<String, dynamic> json) {
  return (
    id: json["id"],
    name: json["name"],
    district: districtFromJson(json["district"])
  );
}
