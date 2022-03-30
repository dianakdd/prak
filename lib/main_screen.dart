import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:prak2/done_tourism_list.dart';
import 'package:prak2/model/tourism_place.dart';
import 'package:prak2/tourism_list.dart';
import 'package:prak2/provider/done_tourism_provider.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Best Attractions in Surabaya'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done_outline),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context){
                  return const DoneTourismList();
                }),);
            }, )
        ],
      ),
      body: TourismList(),
    );
  }
}
