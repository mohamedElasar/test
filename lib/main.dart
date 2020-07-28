import 'package:almansoori_new/widgets/slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Almansoori',
      theme: ThemeData(primarySwatch: Colors.blue, accentColor: Colors.orange),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 80,
                alignment: Alignment.center,
                child: InkWell(
                  child: Icon(
                    Icons.menu,
                    size: 40,
                  ),
                  onTap: () {
                    Drawer();
                  },
                ),
              ),
              Container(
                  width: 100,
                  height: 80,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'ALMANSOORI',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'WIRELINE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'SERVICES',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      )
                    ],
                  )),
              Material(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                elevation: 6,
                child: Container(
                  height: 80,
                  width: 100,
                  child:
                      Image.asset('assets/images/logo.gif', fit: BoxFit.fill),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ImageSlider(),
      ],
    ));
  }
}
