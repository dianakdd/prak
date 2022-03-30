import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prak2/model/tourism_place.dart';
import 'package:prak2/detail_screen.dart';
import 'package:prak2/list_item.dart';
import 'package:prak2/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget{
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList>{
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
        name: 'Submarine Monument Surabaya',
        location: 'Surabaya',
        imageAsset: 'assets/images/header.jpg',
        day: 'Every Day',
        time: '08:00 - 16:00',
        price: 'Rp. 10.000',
        description: "Museum inside a decommissioned Russian war submarine with tours & an adjacent park with cafes. Clean and Well maintained. Car park cost 10k, entrance fee 15k/person. You can see KRI Pasopati there, it's a russian whiskey class. You can also watch the video about the Indonesian Navy at the building beside the submarine.",
        subImage1: 'assets/images/monkasel1.jpg',
        subImage2 : 'assets/images/monkasel2.jpg',
        subImage3: 'assets/images/monkasel3.jpg'
    ),
    TourismPlace(
        name: 'House of Saompoerna',
        location: 'Surabaya',
        imageAsset: 'assets/images/sampoerna.jpg',
        day: 'Every Day',
        time: '09:00 - 18:00',
        price: 'Free',
        description: "This museum packs together national history, local economy, and personal stories and presents its collection inside a heritage building that’s a landmark in itself. It represents the story of Indonesia’s earliest and most popular clover cigarette (or kretek) brands, along with the owning family’s wealth and glam — we’re talking Rolls Royce collection and glamorous traditional heirlooms. Tourists can also sign up for their bus tour through the city’s historical landmark called Surabaya Heritage Track.",
        subImage1: 'assets/images/sam1.jpg',
        subImage2 : 'assets/images/sam2.jpg',
        subImage3: 'assets/images/sam3.jpg'
    ),
    TourismPlace(
        name: 'Sanggar Agung Temple',
        location: 'Surabaya',
        imageAsset: 'assets/images/kenjeran.jpg',
        day: 'Every Day',
        time: '09:00 - 17:00',
        price: 'Rp. 15.000',
        description: "This temple, also known as Hong San Tan Temple, is eclectic in its style and function. As a house of worship for Buddhist, Tao, and Kong Hu Cu followers, this temple shows influences from Chinese, Javanese, Balinese, and Thai cultures in its architecture. The grand temple’s complex features a monumental statue of Guan Yin that’s 20 metres tall, supported by gigantic statues of dragons with the sea in the background.",
        subImage1: 'assets/images/klenteng1.jpg',
        subImage2 : 'assets/images/klenteng2.jpg',
        subImage3: 'assets/images/klenteng3.jpg'
    ),
    TourismPlace(
        name: 'Heroes Monument',
        location: 'Surabaya',
        imageAsset: 'assets/images/pahlawan.jpg',
        day: 'Tuesday - Sunday',
        time: '08:00 - 15:00',
        price: 'Rp. 5.000',
        description: "Due to its importance in the movement for independence, Surabaya is nicknamed the ‘City of Heroes’. Not much of the independence struggles can still be seen in the modern city, but the Heroes Monument is an unmissable landmark dedicated to the people who fought for the country. Tourists can also visit the 10 November Museum in the lower part of the monument, commemorating the Battle of Surabaya on 10th November 1945, which is still celebrated nationwide as the Day of Heroes.",
        subImage1: 'assets/images/pahlawan1.jpg',
        subImage2 : 'assets/images/pahlawan.jpg',
        subImage3: 'assets/images/pahlawan3.jpg'
    ),
    TourismPlace(
        name: 'Ria Kenjeran Beach',
        location: 'Surabaya',
        imageAsset: 'assets/images/kenjeran2.jpg',
        day: 'Every Day',
        time: '09:00 - 18:00',
        price: 'Rp. 15.000',
        description: "Faced with a sprawling and dynamic urban area like Surabaya, people can easily forget the city also has splendid natural beauty. As a coastal town, Surabaya has its share of idyllic beaches, including the popular and well-developed Ria Kenjeran half an hour away from the city centre. Besides the magnificent sunrise and sunset views, the beach area also has various entertainment, rides, facilities, and accommodation.",
        subImage1: 'assets/images/kenjeran.jpeg',
        subImage2 : 'assets/images/kenjeran2.jpg',
        subImage3: 'assets/images/kenjeran3.jpg'
    ),
    TourismPlace(
        name: 'G-WALK',
        location: 'Surabaya',
        imageAsset: 'assets/images/gwalk.jpg',
        day: 'Every Day',
        time: '08:00 - 22:00',
        price: 'Free',
        description: "G-Walk is one of the attractions of special interest in the culinary field in Surabaya. G-Walk is a place to eat with a row of various kinds of restaurants and cafes. Uniquely, there are two areas that are opposite each other. In the first area is a row of modern and traditional food",
        subImage1: 'assets/images/gwalk1.jpg',
        subImage2 : 'assets/images/gwalk2.jpg',
        subImage3: 'assets/images/gwalk2.webp',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemBuilder: (context, index){
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetailScreen(place: place);
              }));
            },
            child: Consumer<DoneTourismProvider>(
                builder: (context, DoneTourismProvider data, widget){
                  return ListItem(
                      place: place,
                      isDone: data.doneTourismPlaceList.contains(place),
                      onCheckboxClick: (bool? value){
                        setState(() {
                          if(value != null){
                            value ? data.doneTourismPlaceList.add(place) : data.doneTourismPlaceList.remove(place);
                          }
                        });
                      }
                  );
                }
            )
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}