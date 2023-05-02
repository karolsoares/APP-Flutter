import 'package:json_annotation/json_annotation.dart';
part 'user_models.g.dart';

@JsonSerializable()
class UserModel {
  String? id;
  String? email;
  String? senha;

  UserModel({
    this.id,
    this.email,
    this.senha,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
