import 'package:flutter/material.dart';
import 'package:state_management/detail_screen.dart';
import 'package:state_management/model/tourism_place.dart';
import 'package:state_management/done_tourism_list.dart';
import 'package:state_management/list_item.dart';
import 'package:state_management/tourism_list.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/done_tourism_provider.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Surabaya'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const DoneTourismList();
                  }),
                );
              },
              icon: const Icon(Icons.done_outline))
        ],
      ),
      body: TourismList(),
    );
  }
}
