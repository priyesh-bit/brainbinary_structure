import 'package:brainbinary_structure/screen/country/country_view_model.dart';
import 'package:brainbinary_structure/screen/country/widget/country_list_item.dart';
import 'package:brainbinary_structure/utils/app.dart';
import 'package:brainbinary_structure/utils/common_widgets.dart';
import 'package:flutter/material.dart';

class CountryScreen extends StatefulWidget {
  @override
  CountryScreenState createState() => CountryScreenState();
}

class CountryScreenState extends State<CountryScreen> {
  CountryViewModel model;

  @override
  void initState() {
    model = CountryViewModel(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppRes.country),
      ),
      body: model.isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: model.countryModel.data.length > 30
                  ? 30
                  : model.countryModel.data.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () => model.countryItemClick(index),
                child: CountryListItem(
                  model.countryModel.data[index].country,
                  model.selectedCountry,
                  index,
                ),
              ),
            ),
      bottomNavigationBar: BottomBar(
        onContinue: () => model.continueClick(model.selectedCountry),
        onBack: () {},
      ),
    );
  }
}
