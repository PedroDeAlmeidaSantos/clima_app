import 'package:clima_app/model/clima_model.dart';
import 'package:flutter/material.dart';

class TempoWidget extends StatelessWidget {
  const TempoWidget({Key key, @required this.climaData}) : super(key: key);

  final ClimaData climaData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          'https://openweathermap.org/img/wn/${climaData.icon}@2x.png',
          fit: BoxFit.fill,
          width: 100.0,
        ),
        Text(
          '${climaData.temp.toStringAsFixed(0)}ºC',
          style: TextStyle(fontSize: 50.0),
        ),
        Text(
          climaData.descTemp,
          style: TextStyle(fontSize: 30.0),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20.0),
        Text(
          'Min. do dia: ${climaData.tempMin.toStringAsFixed(0)}ºC',
          style: TextStyle(fontSize: 16.0),
          textAlign: TextAlign.center,
        ),
        Text(
          'Max. do dia: ${climaData.tempMax.toStringAsFixed(0)}ºC',
          style: TextStyle(fontSize: 16.0),
          textAlign: TextAlign.center,
        ),
        Text(
          'Sensação térmica: ${climaData.feelsLike.toStringAsFixed(0)}ºC',
          style: TextStyle(fontSize: 16.0),
          textAlign: TextAlign.center,
        ),
        Text(
          'Umidade relativa do ar: ${climaData.humidity}%',
          style: TextStyle(fontSize: 16.0),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}