import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prak2/done_list_item.dart';
import 'package:prak2/model/tourism_place.dart';
import 'package:prak2/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class DoneTourismList extends StatelessWidget{
  const DoneTourismList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<TourismPlace> doneTourismPlaceList =
        Provider.of<DoneTourismProvider>(
          context,
          listen: false,
        ).doneTourismPlaceList;

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Has Been Visited'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          final TourismPlace place = doneTourismPlaceList[index];
          return InkWell(
              child: Consumer<DoneTourismProvider>(
                  builder: (context, DoneTourismProvider data, widget){
                    return DoneListItem(
                      place: place,
                      isDone: data.doneTourismPlaceList.contains(place),
                    );
                  }
              )
          );
        },
        itemCount: doneTourismPlaceList.length,
      ),
    );
  }
}
