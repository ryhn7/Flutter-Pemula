import 'package:flutter/material.dart';
import 'package:wisata_bandung/detail_screen.dart';
import 'package:wisata_bandung/model/tourism_place.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Wisata Bandung"),
        ),
        body: ListView.builder(
            itemCount: tourismPlaceList.length,
            itemBuilder: (context, index) {
              final TourismPlace place = tourismPlaceList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(place);
                  }));
                },
                child: Card(
                  color: const Color.fromARGB(221, 15, 15, 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(flex: 1, child: Image.asset(place.imageAsset)),
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
                                  style: const TextStyle(
                                      fontSize: 16.0, color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  place.location,
                                  style: const TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              );
            }));
  }
}
