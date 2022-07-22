import 'package:a016_ccp/components/rest_api.dart';
import 'package:a016_ccp/model/country_model/country_model.dart';
import 'package:a016_ccp/screen/city_screen/city_screen.dart';
import 'package:a016_ccp/screen/country_screen/country_screen.dart';
import 'package:flutter/material.dart';

class CountryViewModel {
  CountryScreenState state;

  CountryViewModel(this.state);

  Future<CountryModel> countryList() async {
    return await getCountry();
  }

  void navigateToCity(String countryName) {
    Navigator.push(
      state.context,
      MaterialPageRoute(
        builder: (context) => CityScreen(countryName),
      ),
    );
  }
}
