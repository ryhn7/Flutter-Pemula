import 'package:flutter/material.dart';
import 'package:wisata_bandung/model/tourism_place.dart';
import 'package:wisata_bandung/text.dart';

class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  const DetailScreen(this.place, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.asset(place.imageAsset),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ),
                          const CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Favoritebutton(),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: Text(
                    place.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Staatliches'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          const Icon(
                            Icons.calendar_today,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            place.openDays,
                            style: informationTextStyle,
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          const Icon(
                            Icons.access_time,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(place.openTime, style: informationTextStyle),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          const Icon(
                            Icons.monetization_on,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(place.ticketPrice, style: informationTextStyle),
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
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (var url in place.imageUrls)
                        Container(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(url),
                          ),
                        ),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}

class Favoritebutton extends StatefulWidget {
  const Favoritebutton({super.key});

  @override
  State<Favoritebutton> createState() => _FavoritebuttonState();
}

class _FavoritebuttonState extends State<Favoritebutton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => setState(() {
        isFavorite = !isFavorite;
      }),
      icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
      color: Colors.red,
    );
  }
}
