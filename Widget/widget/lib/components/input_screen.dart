import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  String _name = '';
  bool lightOn = false;
  String? language;
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Enter your name...", labelText: "Name"),
                  onChanged: (String value) {
                    setState(() {
                      _name = value;
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                content: Text("Hello $_name"),
                              ));
                    },
                    child: const Text("Submit"))
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: Column(
                children: <Widget>[
                  const Text("Switch"),
                  Switch(
                    value: lightOn,
                    onChanged: (bool value) {
                      setState(() {
                        lightOn = value;
                      });

                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Light is ${lightOn ? 'on' : 'off'}"),
                        duration: const Duration(seconds: 1),
                      ));
                    },
                  ),
                ],
              )),
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text("Radio"),
                  ListTile(
                    leading: Radio<String>(
                      value: "Dart",
                      groupValue: language,
                      onChanged: (String? value) {
                        setState(() {
                          language = value;
                          showSnackBar();
                        });
                      },
                    ),
                    title: const Text("Dart"),
                  ),
                  ListTile(
                    leading: Radio<String>(
                      value: "Kotlin",
                      groupValue: language,
                      onChanged: (String? value) {
                        setState(() {
                          language = value;
                          showSnackBar();
                        });
                      },
                    ),
                    title: const Text("Kotlin"),
                  ),
                  ListTile(
                    leading: Radio<String>(
                      value: "Swift",
                      groupValue: language,
                      onChanged: (String? value) {
                        setState(() {
                          language = value;
                          showSnackBar();
                        });
                      },
                    ),
                    title: const Text("Swift"),
                  ),
                ]),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text("Checkbox"),
                  ListTile(
                    leading: Checkbox(
                      value: agree,
                      onChanged: (bool? value) {
                        setState(() {
                          agree = value!;
                        });
                      },
                    ),
                    title: const Text("Agree/Disagree"),
                  )
                ]),
          ),
        ],
      ),
    );
  }

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("$language selected"),
      duration: const Duration(seconds: 1),
    ));
  }
}
