import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class JeeMainsController extends ChangeNotifier {
  final dio = Dio();
  List<dynamic> _jeeMainsData = [];

  List<dynamic> get jeeMainsUserData => _jeeMainsData;

  get length => null;

  void getJeeMainsAPIData() async {
    try {
      var response = await dio.get(
        "https://mapi.trycatchtech.com/v3/twelfth_question_papers/year_list?category=mains",
      );
      if (response.statusCode == 200 && response.data != null) {
        _jeeMainsData = response.data;
        notifyListeners();
      } else {
        debugPrint("Unexpected response format or status code");
      }
    } catch (e) {
      debugPrint("Error fetching JEE Mains data: $e");
    }
  }
}
