import 'package:flutter/material.dart';
import 'package:state_management/detail_screen.dart';
import 'package:state_management/model/tourism_place.dart';
import 'package:state_management/done_tourism_list.dart';
import 'package:state_management/list_item.dart';
import 'package:state_management/tourism_list.dart';

class TourismList extends StatefulWidget {
  final List<TourismPlace> doneTourismPlaceList;

  const TourismList({Key? key, required this.doneTourismPlaceList})
      : super(key: key);

  @override
  State<TourismList> createState() => _TourismListState(doneTourismPlaceList);
}

class _TourismListState extends State<TourismList> {
  List<TourismPlace> doneTourismPlaceList = [];
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
        name: 'Surabaya Submarine Monument',
        location: 'Jl Pemuda',
        imageAsset: 'assets/images/kapalselam.jpeg',
        description:
            'Monumen Kapal Selam Surabaya merupakan monumen sejarah yang menampilkan kapal selam sungguhan, yakni KRI Pasopati 410.',
        cost: 'Rp.10.000',
        time: '08.00 - 16.00',
        day: 'Open Everyday',
        imageAsset2: 'assets/images/kapalselam.jpeg',
        imageAsset3: 'assets/images/kapalselam.jpeg',
        imageAsset4: 'assets/images/kapalselam.jpeg',
        imageAsset5: 'assets/images/kapalselam.jpeg'),
    TourismPlace(
        name: 'Kelenteng Sanggar Agung',
        location: 'Kenjeran',
        imageAsset: 'assets/images/klenteng.jpeg',
        description:
            'Klenteng Sanggar Agung juga dikenal dengan sebutan KLenteng Hong San Tang. Didirikan pada tahun 1999 dan berfungsi sebagai tempat ibadah umat Tri Dharma.',
        cost: 'Rp.15.000',
        time: '10.00 - 19.00',
        day: 'Open Everyday',
        imageAsset2: 'assets/images/klenteng.jpeg',
        imageAsset3: 'assets/images/klenteng.jpeg',
        imageAsset4: 'assets/images/klenteng.jpeg',
        imageAsset5: 'assets/images/klenteng.jpeg'),
    TourismPlace(
        name: 'House of Sampoerna',
        location: 'Krembangan Utara',
        imageAsset: 'assets/images/HOS.jpeg',
        description:
            'House of Sampoerna adalah sebuah museum tembakau dan markas besar Sampoerna yang terletak di Surabaya. ',
        cost: 'Rp.20.000',
        time: '10.00 - 20.00',
        day: 'Open Everyday',
        imageAsset2: 'assets/images/HOS.jpeg',
        imageAsset3: 'assets/images/HOS.jpeg',
        imageAsset4: 'assets/images/HOS.jpeg',
        imageAsset5: 'assets/images/HOS.jpeg'),
    TourismPlace(
        name: 'Tugu Pahlawan',
        location: 'Alun-alun Contong',
        imageAsset: 'assets/images/tupal.jpeg',
        description:
            'Tugu Pahlawan adalah sebuah monumen yang menjadi markah tanah Kota Surabaya. Tinggi monumen ini adalah 41,15 meter dan berbentuk lingga atau paku terbalik.',
        cost: 'Free',
        time: '24 hours',
        day: 'Open Everyday',
        imageAsset2: 'assets/images/tupal.jpeg',
        imageAsset3: 'assets/images/tupal.jpeg',
        imageAsset4: 'assets/images/tupal.jpeg',
        imageAsset5: 'assets/images/tupal.jpeg'),
    TourismPlace(
        name: 'Patung Suroboyo',
        location: 'Wonokromo',
        imageAsset: 'assets/images/pasuroboyo.jpeg',
        description:
            'Patung Sura dan Baya adalah sebuah patung yang merupakan lambang kota Surabaya. Patung ini berada di depan Kebun Binatang Surabaya. Patung ini terdiri atas dua hewan yaitu buaya dan hiu yang menjadi inspirasi nama kota Surabaya: ikan sura dan baya.',
        cost: 'Free',
        time: '24 hours',
        day: 'Open Everyday',
        imageAsset2: 'assets/images/pasuroboyo.jpeg',
        imageAsset3: 'assets/images/pasuroboyo.jpeg',
        imageAsset4: 'assets/images/pasuroboyo.jpeg',
        imageAsset5: 'assets/images/pasuroboyo.jpeg'),
  ];

  _TourismListState(this.doneTourismPlaceList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: ListItem(
              place: place,
              isDone: doneTourismPlaceList.contains(place),
              onCheckboxClick: (bool? value) {
                setState(() {
                  if (value != null) {
                    value
                        ? doneTourismPlaceList.add(place)
                        : doneTourismPlaceList.remove(place);
                  }
                });
              }),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}
