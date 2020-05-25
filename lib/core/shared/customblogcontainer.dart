import 'package:flutter/material.dart';

Widget myCustomBlogContainer(
    String asset, String title, String subtitle, String content, Icon icon) {
  return Container(
    padding: EdgeInsets.only(left: 15.0, right: 5.0),
    height: 80,
    width: 400,
    color: Colors.white,
    child: Row(
      children: <Widget>[
        Container(
            height: 75,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                image: DecorationImage(
                    image: AssetImage(asset), fit: BoxFit.fill))),
        SizedBox(
          width: 10.0,
        ),
        Container(
          height: 75,
          width: 200,
          child: Column(children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 120),
              height: 20.0,
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 120),
              height: 20.0,
              child: Text(
                subtitle,
                style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 10),
              height: 30.0,
              child: Text(
                content,
                style: TextStyle(
                    fontSize: 8.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w200),
              ),
            )
          ]),
        ),
        Container(
            height: 65.0,
            width: 30.0,
            child: IconButton(
              onPressed: () {},
              icon: icon,
            )),
      ],
    ),
  );
}
