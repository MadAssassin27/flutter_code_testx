class Hospital {
  final String id;
  final String name;
  final String address;
  final String phone;
  final String imageUrl;
  final List<String> sort;

  Hospital(
      {required this.id,
      required this.name,
      required this.address,
      required this.phone,
      required this.imageUrl,
      required this.sort});

  // Hospital.fromJson(Map<String, dynamic> json) {
  //   id = json['id'];
  //   name = json['name'];
  //   address = json['address'];
  //   phone = json['phone'];
  //   imageUrl = json['imageUrl'];
  //   sort = json['sort'].cast<String>();
  // }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['address'] = address;
    data['phone'] = phone;
    data['imageUrl'] = imageUrl;
    data['sort'] = sort;
    return data;
  }
}
