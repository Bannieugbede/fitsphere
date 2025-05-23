class ProgressSettingModel {
  int? id;
  String? name;
  bool? isEnable=false;

  ProgressSettingModel({
    this.id,
    this.name,
    this.isEnable,
  });
  ProgressSettingModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    isEnable = json['isEnable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['isEnable'] = isEnable;
    return data;
  }
}