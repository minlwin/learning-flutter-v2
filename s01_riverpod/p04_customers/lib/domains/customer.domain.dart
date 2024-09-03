import 'package:p04_customers/domains/locations.domain.dart';

typedef Customer = ({
  String id,
  String name,
  String profile,
  String dob,
  String registerAt,
  String phone,
  String email,
  Township township,
  String quarter,
  String street,
  String building,
});

Customer customerFromJson(Map<String, dynamic> json) => (
      id: json["id"],
      name: json["name"],
      profile: json["profile"],
      dob: json["dob"],
      registerAt: json["registerAt"],
      phone: json["phone"],
      email: json["email"],
      township: townshipFromJson(json["township"]),
      quarter: json["quarter"],
      street: json["street"],
      building: json["building"]
    );

typedef CustomerInfo = ({
  String id,
  String name,
  String registerAt,
  String phone,
  String email
});

CustomerInfo customerInfoFromJson(Map<String, dynamic> json) => (
      id: json["id"],
      name: json["name"],
      registerAt: json["registerAt"],
      phone: json["phone"],
      email: json["email"]
    );

List<CustomerInfo> customerListFromJson(List<Map<String, dynamic>> json) =>
    json.map((e) => customerInfoFromJson(e)).toList(growable: false);

typedef PageInfo<T> = ({
  List<T> contents,
  int page,
  int size,
  int count,
});

PageInfo<CustomerInfo> customerPageFromJson(Map<String, dynamic> json) => (
      contents: customerListFromJson(json["contents"]),
      page: json["json"],
      size: json["size"],
      count: json["count"]
    );

typedef CustomerForm = ({
  String? name,
  String? phone,
  String? email,
  String? dob,
  String? building,
  String? street,
  String? quarter,
  int? township
});

CustomerForm newCustomerForm() => (
      name: null,
      phone: null,
      email: null,
      dob: null,
      building: null,
      street: null,
      quarter: null,
      township: null
    );

extension CustomerFormDto on CustomerForm {
  Map<String, dynamic> toJson() => {
        "name": this.name,
        "phone": this.phone,
        "email": this.email,
        "dob": this.dob,
        "building": this.building,
        "street": this.street,
        "quarter": this.quarter,
        "township": this.township,
      };

  CustomerForm withInfo({
    required String name,
    required phone,
    required email,
    required dob,
  }) =>
      (
        name: name,
        phone: phone,
        email: email,
        dob: dob,
        building: this.building,
        street: this.street,
        quarter: this.quarter,
        township: this.township
      );

  CustomerForm withAddress({
    required String building,
    required String street,
    required String quarter,
    required int township,
  }) =>
      (
        name: this.name,
        phone: this.phone,
        email: this.email,
        dob: this.dob,
        building: building,
        street: street,
        quarter: quarter,
        township: township
      );
}
