//Function that returns a
//widget (container) which
//holds the details of the
//images of the places
import 'package:flutter/material.dart';

Widget myCustomizedContainer(String asset) {
  return Container(
      height: 40,
      width: 85,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          image: DecorationImage(image: AssetImage(asset), fit: BoxFit.fill)));
}

//End of the screen
