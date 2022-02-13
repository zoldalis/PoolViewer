import 'dart:convert';
/// code : 0
/// message : "string"
/// description : "string"

AccessDeniedModel accessDeniedModelFromJson(String str) => AccessDeniedModel.fromJson(json.decode(str));
String accessDeniedModelToJson(AccessDeniedModel data) => json.encode(data.toJson());
class AccessDeniedModel {
  AccessDeniedModel({
      int? code, 
      String? message, 
      String? description,}){
    _code = code;
    _message = message;
    _description = description;
}

  AccessDeniedModel.fromJson(dynamic json) {
    _code = json['code'];
    _message = json['message'];
    _description = json['description'];
  }
  int? _code;
  String? _message;
  String? _description;

  int? get code => _code;
  String? get message => _message;
  String? get description => _description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['message'] = _message;
    map['description'] = _description;
    return map;
  }

}