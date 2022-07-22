import 'package:a016_ccp/model/country_model/country_model.dart';
import 'package:a016_ccp/model/view_model/country_view_model/country_view_model.dart';
import 'package:a016_ccp/widgets/error_message/error_message.dart';
import 'package:a016_ccp/widgets/list_divider/list_divider.dart';
import 'package:a016_ccp/widgets/list_item/list_item.dart';
import 'package:flutter/material.dart';

class CountryScreen extends StatefulWidget {
  @override
  State<CountryScreen> createState() => CountryScreenState();
}

class CountryScreenState extends State<CountryScreen> {
  CountryViewModel model;

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    model = CountryViewModel(this);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: FutureBuilder<CountryModel>(
          future: model.countryList(),
          builder:
              (BuildContext context, AsyncSnapshot<CountryModel> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            if (snapshot.connectionState == ConnectionState.done) {
              return countryError
                  ? ErrorMessage(message: snapshot.data.msg)
                  : ListView.separated(
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            model.navigateToCity(
                                snapshot.data.data[index].country);
                          },
                          child: ListItem(
                            itemName: snapshot.data.data[index].country,
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => ListDivider(),
                      itemCount: snapshot.data.data.length,
                    );
            }
            if (snapshot.connectionState == ConnectionState.none) {
              return ErrorMessage(
                message: "Something went\nWrong!",
              );
            }
            return ErrorMessage(
              message: "Something went\nWrong!",
            );
          },
        ),
      ),
    );
  }
}
