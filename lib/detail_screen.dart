import 'package:flutter/material.dart';
import 'package:prak2/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: ListView(
          children: <Widget>[
            Image.asset(place.imageAsset),
            Container(
                margin: EdgeInsets.only(top: 15.0),
                child: Text(
                  place.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lobster'),
                )),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Icon(Icons.calendar_today),
                      Text(place.day)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.access_time),
                      Text(place.time)
                    ],
                  ),Column(
                    children: <Widget>[
                      const Icon(Icons.attach_money),
                      Text(place.price)
                    ],
                  ),

                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                place.description,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16.0, fontFamily: 'Oxygen'),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(place.subImage1),
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(place.subImage2),
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(place.subImage3),
                      )
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
}