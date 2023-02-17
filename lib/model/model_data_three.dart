class ModelDataThree {
  final ClassCarData? classCarData;
  final ClassBikeData? classBikeData;

  ModelDataThree({
    this.classCarData,
    this.classBikeData,
  });

  factory ModelDataThree.fromJson(Map<String, dynamic> json) {
    return ModelDataThree(
      classCarData: ClassCarData.fromJson(json['class_teacher_data']),
      classBikeData: ClassBikeData.fromJson(json['class_stu_data']),
    );
  }
}

///-------------------------------------------------///
class ClassCarData {
  final List<UserDataThree>? carlist;

  ClassCarData({
    this.carlist,
  });

  factory ClassCarData.fromJson(Map<String, dynamic> json) {
    return ClassCarData(
      carlist: List<UserDataThree>.from(json["teacher_list"].map((val) => UserDataThree.fromJson(val))),
    );
  }
}

///-------------------------------------------------///
class ClassBikeData {
  final List<UserDataThree>? bikelist;

  ClassBikeData({
    this.bikelist,
  });

  factory ClassBikeData.fromJson(Map<String, dynamic> json) {
    return ClassBikeData(
      bikelist: List<UserDataThree>.from(json["stu_list"].map((val) => UserDataThree.fromJson(val))),
    );
  }
}

///-------------------------------------------------///
class UserDataThree {
  final String? carName;
  final int? carId;
  final int? carModelNumber;

  UserDataThree({this.carName, this.carId, this.carModelNumber});

  factory UserDataThree.fromJson(Map<String, dynamic> json) {
    return UserDataThree(
      carName: json['car_name'],
      carId: json['car_id'],
      carModelNumber: json['car_model_number'],
    );
  }
}
