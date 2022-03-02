class Device {
  int id;
  String name;
  bool isOnline;
  bool isTampered;
  String address;

  Device({
    required this.id,
    required this.name,
    required this.isOnline,
    required this.isTampered,
    required this.address,
  });

  Device.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"],
        isOnline = json["isOnline"],
        isTampered = json["isTampered"],
        address = json["address"];
}
