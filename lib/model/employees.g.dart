// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employees.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Employees _$EmployeesFromJson(Map<String, dynamic> json) => Employees()
  ..id = (json['id'] as num?)?.toInt()
  ..name = json['name'] as String?
  ..company = json['company'] as String?
  ..designation = json['designation'] as String?
  ..companyLogo = json['company_logo'] as String?;

Map<String, dynamic> _$EmployeesToJson(Employees instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'company': instance.company,
      'designation': instance.designation,
      'company_logo': instance.companyLogo,
    };
