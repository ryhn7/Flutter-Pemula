import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(children: <Widget>[
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: ElevatedButton(
              onPressed: () {}, child: const Text('Elevated Button')),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: TextButton(onPressed: () {}, child: const Text('Text Button')),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: OutlinedButton(
              onPressed: () {}, child: const Text('Outlined Button')),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_up)),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 16),
          child: DropdownButton<String>(
            items: const <DropdownMenuItem<String>>[
              DropdownMenuItem<String>(
                value: 'Dart',
                child: Text('Dart'),
              ),
              DropdownMenuItem<String>(
                value: 'Kotlin',
                child: Text('Kotlin'),
              ),
              DropdownMenuItem<String>(
                value: 'Swift',
                child: Text('Swift'),
              ),
            ],
            value: language,
            hint: const Text('Select Language'),
            onChanged: (String? value) {
              setState(() {
                language = value;
              });
            },
          ),
        )
      ]),
    );
  }
}
