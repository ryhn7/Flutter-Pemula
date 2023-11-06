import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'First Screen',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            )),
      ),
      body: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 14, 147, 208),
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: const Text(
            'Rayhan Jago Flutter',
            style: TextStyle(fontSize: 24, color: Colors.white),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueGrey,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
