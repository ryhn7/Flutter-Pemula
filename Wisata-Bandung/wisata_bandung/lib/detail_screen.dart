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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 32.0,
        ),
        child: Center(
          child: SizedBox(
            width: 1200,
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 800) {
                return DetailWebPage(place);
              } else {
                return DetailMobileScreen(place);
              }
            }),
          ),
        ),
      ),
    );
  }
}

class DetailMobileScreen extends StatelessWidget {
  final TourismPlace place;
  const DetailMobileScreen(this.place, {super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    );
  }
}

class DetailWebPage extends StatelessWidget {
  final TourismPlace place;
  const DetailWebPage(this.place, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        "Wisata Bandung",
        style: TextStyle(
          fontFamily: 'Staatliches',
          fontSize: 32,
          color: Colors.white,
        ),
      ),
      const SizedBox(
        height: 32,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(place.imageAsset),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  height: 150,
                  padding: const EdgeInsets.only(bottom: 16),
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
                  ))
            ],
          )),
          const SizedBox(width: 32),
          Expanded(
            child: Card(
              color: const Color.fromARGB(221, 15, 15, 15),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      place.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Staatliches'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: <Widget>[
                            const Icon(Icons.calendar_today, color: Colors.white),
                            const SizedBox(width: 8.0),
                            Text(
                              place.openDays,
                              style: informationTextStyle,
                            ),
                          ],
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Favoritebutton(),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        const Icon(Icons.access_time, color: Colors.white),
                        const SizedBox(width: 8.0),
                        Text(
                          place.openTime,
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: <Widget>[
                        const Icon(Icons.monetization_on, color: Colors.white),
                        const SizedBox(width: 8.0),
                        Text(
                          place.ticketPrice,
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        place.description,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Oxygen',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )
    ]);
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
