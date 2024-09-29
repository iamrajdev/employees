import 'package:json_annotation/json_annotation.dart';

part 'employee_details.g.dart';

@JsonSerializable()
class EmployeeDetails {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'rating')
  String? rating;
  @JsonKey(name: 'company')
  String? company;
  @JsonKey(name: 'interests')
  String? interests;
  @JsonKey(name: 'view_more')
  String? viewMore;
  @JsonKey(name: 'designation')
  String? designation;
  @JsonKey(name: 'company_logo')
  String? companyLogo;
  @JsonKey(name: 'job_descripton')
  String? jobDescripton;

  EmployeeDetails();

  factory EmployeeDetails.fromJson(Map<String, dynamic> json) =>
      _$EmployeeDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$EmployeeDetailsToJson(this);
}
