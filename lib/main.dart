import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Slider App'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [
    "images/animal1.jpg",
    "images/animal2.jpg",
    "images/animal3.jpg",
    "images/animal4.jpg",
  ];

  var imageIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            child: Image(
              image: AssetImage(
                images[imageIndex],
              ),
              fit: BoxFit.cover,
            ),
            height: 400,
            width: double.infinity,
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 42.0,
                color: Colors.pink,
                onPressed: () {
                  setState(() {
                    imageIndex > 0
                        ? imageIndex--
                        : imageIndex = images.length - 1;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                iconSize: 42.0,
                color: Colors.pink,
                onPressed: () {
                  setState(() {
                    imageIndex < images.length - 1
                        ? imageIndex++
                        : imageIndex = 0;
                  });
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
