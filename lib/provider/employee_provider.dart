import 'dart:convert';
import 'dart:io';

import 'package:employees/api/api_base.dart';
import 'package:employees/model/employee_details.dart';
import 'package:employees/model/employees.dart';
import 'package:employees/screen/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EmployeeProvider extends ChangeNotifier {
  bool isAuthenticated = false;

  Future<List<Employees>?> getAllEmployee() async {
    try {
      http.Response response = await http.get(
        Uri.parse(ApiBaseUrl().employeeBaseUrl),
        headers: {
          'Content-Type': 'application/json; charset=utf-8',
        },
      );

      if (response.statusCode == 200) {
        var jsonData = json.decode(response.body).cast<Map<String, dynamic>>();
        notifyListeners();
        return jsonData.map<Employees>((json) {
          return Employees.fromJson(json);
        }).toList();
      } else {
        throw Exception(AppStrings.failedToLoadEmployeeList);
      }
    } on SocketException {
      throw AppStrings.noInternet;
    }
  }

  Future<EmployeeDetails> getEmployeeDetailsById(var id) async {
    try {
      http.Response response = await http.get(
        Uri.parse('${ApiBaseUrl().empDetailsBaseUrl}?id=$id'),
        headers: {
          'Content-Type': 'application/json; charset=utf-8',
        },
      );

      if (response.statusCode == 200) {
        var responseData =
            json.decode(response.body).cast<Map<String, dynamic>>();
        notifyListeners();
        return responseData.map<EmployeeDetails>((json) {
          return EmployeeDetails.fromJson(json);
        }).toList();
      } else {
        throw Exception(AppStrings.failedToLoadEmployeeList);
      }
    } on SocketException {
      throw AppStrings.noInternet;
    }
  }
}
