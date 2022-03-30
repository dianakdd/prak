import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prak2/model/tourism_place.dart';

class DoneListItem extends StatelessWidget{
  final TourismPlace place;
  final bool isDone;

  const DoneListItem({
    required this.place,
    required this.isDone,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
        color: isDone ? Colors.white60 : Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Image.asset(place.imageAsset),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      place.name,
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(place.location),
                  ],
                ),
              ),
            ),
            const Icon(
                Icons.done_outline
            ),
          ],
        )
    );
  }
}