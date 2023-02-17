class UserModel {
  final String? className;
  final String? classTime;
  final int? noStd;
  final List<StdModel>? stuList;

  UserModel({
    this.className,
    this.classTime,
    this.noStd = 0,
    this.stuList,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      className: json['class_name'],
      classTime: json['class_time'],
      noStd: json['num_stu'],
      stuList: List<StdModel>.from(json["stu_list"].map((val) => StdModel.fromJson(val))),
    );
  }
}

class StdModel {
  final String? stdName;
  final int? stdId;
  final int? moNum;

  StdModel({
    this.stdName,
    this.stdId,
    this.moNum,
  });

  factory StdModel.fromJson(Map<String, dynamic> json) {
    return StdModel(
      stdName: json['stu_name'],
      stdId: json['stu_id'],
      moNum: json['stu_mo_num'],
    );
  }
}
