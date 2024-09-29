// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeeDetails _$EmployeeDetailsFromJson(Map<String, dynamic> json) =>
    EmployeeDetails()
      ..id = (json['id'] as num?)?.toInt()
      ..name = json['name'] as String?
      ..rating = json['rating'] as String?
      ..company = json['company'] as String?
      ..interests = json['interests'] as String?
      ..viewMore = json['view_more'] as String?
      ..designation = json['designation'] as String?
      ..companyLogo = json['company_logo'] as String?
      ..jobDescripton = json['job_descripton'] as String?;

Map<String, dynamic> _$EmployeeDetailsToJson(EmployeeDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rating': instance.rating,
      'company': instance.company,
      'interests': instance.interests,
      'view_more': instance.viewMore,
      'designation': instance.designation,
      'company_logo': instance.companyLogo,
      'job_descripton': instance.jobDescripton,
    };
