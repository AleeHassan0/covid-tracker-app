import 'dart:convert';

import 'package:covid_19/model/WorldStatesModel.dart';
import 'package:covid_19/services/utilities/app_url.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class StateServices{
  Future<WorldStatesModel>fetchWorldStatesRecords()async{
    final response=await http.get(Uri.parse(AppUrl.worldStateApi));

    if(response.statusCode==200){
      var data=jsonDecode(response.body);
      return WorldStatesModel.fromJson(data);
    }else{
      throw Exception('Error');
    }
  }

  Future<List<dynamic>>countriesListApi()async{
    var data;
    final response=await http.get(Uri.parse(AppUrl.countriesList));

    if(response.statusCode==200){
       data=jsonDecode(response.body);
      return data;
    }else{
      throw Exception('Error');
    }
  }
}