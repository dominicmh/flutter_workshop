import 'package:aare_temp_app/aare_data.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:async';
import 'dart:convert';

class AareService extends ChangeNotifier{

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  AareData _aareData;
  AareData get aareData => _aareData;


  Future<bool> fetchAareData() async {
    try {

      //Create a response object and .get contents of http://aare.schwumm.ch/aare.json

      //Check that statuscode is ok

      //uncomment next line
      //final Map<String, dynamic> fetchedData = json.decode(response.body);

      //create an AaareData object and fill constructor with values from fetchedData map

      //set _isLoadingState, set _aareData and notifyListeners

      return true;
    }
    catch (error) {
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

}