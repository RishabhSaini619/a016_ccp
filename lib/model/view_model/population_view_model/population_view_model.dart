import 'package:a016_ccp/components/rest_api.dart';
import 'package:a016_ccp/model/population_model/population_model.dart';
import 'package:a016_ccp/screen/population_screen/population_screen.dart';

class PopulationViewModel {
  PopulationScreen state;

  PopulationViewModel(this.state);

  Future<PopulationModel> populationApi(final String cityName) async {
    print(
        "Done! \n The Population Api is working properly till now",
    );
    return await getPopulation(cityName);
  }
}
