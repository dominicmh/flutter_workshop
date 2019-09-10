import 'package:aare_temp_app/aare_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WaterTempPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AareService aareService = Provider.of<AareService>(context);
    aareService.fetchAareData();
    return Scaffold(
        appBar: AppBar(
          title: Text('Aaare temperature in Berne'),
        ),
        body: Center(
          child: temperatureWidget(aareService, context),
        ));
  }

  Widget temperatureWidget(AareService aareService, BuildContext context) {
    if (aareService.aareData == null || aareService.isLoading) {
      return CircularProgressIndicator();
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(aareService.aareData.temperature.toString() + '°C',
            style: Theme.of(context).textTheme.display1),
        Text('Data from ${aareService.aareData.source}'),
        Text('Measured at ${aareService.aareData.date}')
      ],
    );
  }
}
