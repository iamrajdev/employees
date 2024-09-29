import 'package:json_annotation/json_annotation.dart';

part 'employees.g.dart';

@JsonSerializable()
class Employees {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'company')
  String? company;
  @JsonKey(name: 'designation')
  String? designation;
  @JsonKey(name: 'company_logo')
  String? companyLogo;

  Employees();

  factory Employees.fromJson(Map<String, dynamic> json) =>
      _$EmployeesFromJson(json);

  Map<String, dynamic> toJson() => _$EmployeesToJson(this);
}
