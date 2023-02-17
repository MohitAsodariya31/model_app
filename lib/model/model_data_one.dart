class ModelDataOne {
  final String? companyname;
  final String? foundername;
  final String? ceoname;
  final String? headoffice;
  final List<CarList>? carlist;

  ModelDataOne({
    this.companyname = "",
    this.foundername = "",
    this.ceoname = "",
    this.headoffice = "",
    this.carlist,
  });

  factory ModelDataOne.fromJson(Map<String, dynamic> json) {
    return ModelDataOne(
      companyname: json['company_name'],
      foundername: json['founder_name'],
      ceoname: json['ceo_name'],
      headoffice: json['headOffice'],
      carlist: List<CarList>.from(json["car_list"].map((value) => CarList.fromJson(value))),
    );
  }
}

class CarList {
  final String? carname;
  final String? price;
  final String? mileage;
  final String? engine;
  final String? safety;
  final String? fuelType;
  final String? transmission;
  final String? seatingCapacity;

  CarList({this.carname, this.price, this.mileage, this.engine, this.safety, this.fuelType, this.transmission, this.seatingCapacity});

  factory CarList.fromJson(Map<String, dynamic> json) {
    return CarList(
      carname: json['carname'],
      price: json['price'],
      mileage: json['mileage'],
      engine: json['engine'],
      safety: json['safety'],
      fuelType: json['fuelType'],
      transmission: json['transmission'],
      seatingCapacity: json['seatingCapacity'],
    );
  }
}
