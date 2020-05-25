import 'package:flutter/material.dart';
import 'package:hellotripper/core/shared/customIcons.dart';
import 'package:hellotripper/core/shared/mycustomisedcontainer.dart';
import 'package:hellotripper/core/shared/customblogcontainer.dart';
import 'package:hellotripper/core/views/carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 12.0),
          Container(
            color: Colors.white12,
            height: 35.0,
            width: 400,
            child: Row(children: <Widget>[
              SizedBox(
                width: 15.0,
              ),
              Expanded(
                  flex: 2,
                  child: Text(
                    'Enjoy your life with us!',
                    style:
                        TextStyle(fontSize: 19.0, fontWeight: FontWeight.w500),
                  )),
              SizedBox(width: 30.0),

              IconButton(
                onPressed: () {},
                icon: Icon(Fryo.funnel),
              ),
              //Funnel icon to implement filter in data
              SizedBox(width: 20.0),
            ]),
          ),
          SizedBox(height: 10.0),

          //Area for textfield
          Container(
            
            padding: EdgeInsets.only(left: 15, right: 15.0),
            height: 40.0,
            width: 400,
            color: Colors.white,
            child: TextFormField(
              controller: searchController,
              decoration: new InputDecoration(
                 hintText: 'Search ..',
                prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.black38,
                    )),
                labelText: 'Search Your Favourite Places..',
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: const BorderSide(
                    color: Colors.white12,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.black12),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            padding: EdgeInsets.only(left: 50.0, right: 50.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 180,
                  width: 400,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
                  child: CarouselPage(),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.0),
          //
          //
          Container(
            height: 20,
            width: 400,
            child: Row(children: <Widget>[
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Top Cities',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(width: 20.0),
              ButtonTheme(
                  buttonColor: Colors.purple,
                  minWidth: 12.0,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'HOT',
                      style: TextStyle(
                          fontSize: 8.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    ),
                  ))
            ]),
          ),
          SizedBox(height: 15.0),
          //Container which has listview as its child to
          //show a list of places ..
          Container(
              color: Colors.white,
              height: 60.0,
              child: ListView(
                scrollDirection: Axis.horizontal, //to scroll horizontally
                children: <Widget>[
                  SizedBox(width: 20.0),

                  //My customized container to show
                  //the images of places within the container
                  myCustomizedContainer('assets/images/venice.jpg'),
                  SizedBox(width: 20.0),
                  myCustomizedContainer('assets/images/gotham.jpg'),
                  SizedBox(width: 20.0),
                  myCustomizedContainer('assets/images/los angels.jpg'),
                  SizedBox(width: 20.0),
                  myCustomizedContainer('assets/images/istanbul.jpg'),
                  SizedBox(width: 20.0),
                  myCustomizedContainer('assets/images/mexico.jpg'),
                  SizedBox(width: 20.0),
                  myCustomizedContainer('assets/images/rome.jpg'),
                  SizedBox(width: 20.0),
                  myCustomizedContainer('assets/images/venice.jpg'),
                  SizedBox(width: 20.0),
                ],
              )),
          SizedBox(height: 10.0),
          Container(
            height: 30,
            width: 400,
            child: Row(children: <Widget>[
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Blog',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ]),
          ),
          //Container which has listview as its child
          //to show the list of blogs which scrolls vertically
          Container(
            height: 180,
            child:
                ListView(scrollDirection: Axis.vertical, // to scroll vertically

                    children: <Widget>[
                  myCustomBlogContainer(
                    'assets/images/gotham.jpeg',
                    'Pagoda',
                    'Indonesia',
                    ' This is one of the most memorable places \nin the world.Many tourists from many countries\nvisit this place often ',
                    Icon(Icons.favorite, color: Colors.pink),
                  ),
                  SizedBox(height: 10.0),
                  myCustomBlogContainer(
                    'assets/images/miramar.jpeg',
                    'California',
                    'Istaanbul',
                    'This place is famous because of \n the history behind this place.This is a place every \n must travel atleast one in their lifetime',
                    Icon(Icons.favorite_border, color: Colors.black),
                  ),
                  SizedBox(height: 10.0),
                  myCustomBlogContainer(
                    'assets/images/venice.jpeg',
                    'Pagoda',
                    'Indonesia',
                    ' This is one of the most memorable places \nin the world.Many tourists from many countries\nvisit this place often ',
                    Icon(Icons.favorite, color: Colors.pink),
                  ),
                  SizedBox(height: 10.0),
                  myCustomBlogContainer(
                    'assets/images/miramar.jpeg',
                    'California',
                    'Istaanbul',
                    'This place is famous because of \n the history behind this place.This is a place every \n must travel atleast one in their lifetime',
                    Icon(Icons.favorite_border, color: Colors.black),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}

//end
