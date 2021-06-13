import 'package:flutter/material.dart';
import 'package:test_flutter_application/color_generator.dart';
import 'package:test_flutter_application/constantes.dart';

class Background extends StatefulWidget {
  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    Color myValue;

    bool isSet = true;

    return Scaffold(
      body: GestureDetector(
        child: Container(
          color:
              (isSet) ? myValue = colorGenerator() : myValue = colorGenerator(),
          child: Center(
            child: Text(
              kDefaultText,
              style: TextStyle(
                  fontFamily: 'Roboto_Slab',
                  fontSize: kDefaultTextSize,
                  color: kDefaultTextColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        onTap: () => setState(() {
          isSet ? isSet = false : isSet = true;
        }),
      ),
    );
  }
}
