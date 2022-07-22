
import 'package:a016_ccp/components/rest_api.dart';
import 'package:a016_ccp/model/city_model/city_model.dart';
import 'package:a016_ccp/screen/population_screen/population_screen.dart';
import 'package:flutter/material.dart';

class CityViewModel {
  BuildContext state;

  CityViewModel(this.state);

  Future<CityModel> cityList(final String countryName) async {
    return await getCity(countryName);
  }
  void navigateToPopulation(String cityName) {
    Navigator.push(
      state,
      MaterialPageRoute(
        builder: (context) => PopulationScreen(cityName),
      ),
    );
  }
}
