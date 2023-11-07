import 'package:flutter/material.dart';

class RainbowScreen extends StatelessWidget {
  const RainbowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // Column(
        //   children: <Widget>[
        //     Expanded(
        //       child: Container(
        //         color: Colors.red,
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.orange,
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.yellow,
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.green,
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.blue,
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.indigo,
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.purple,
        //       ),
        //     ),
        //   ],
        // );

        const SafeArea(
      child: Column(
        children: [
          Row(
            children: const [
              ExpandedWidget(),
              FlexibleWidget(),
            ],
          ),
          Row(
            children: const [
              ExpandedWidget(),
              ExpandedWidget(),
            ],
          ),
          Row(
            children: const [
              FlexibleWidget(),
              FlexibleWidget(),
            ],
          ),
          Row(
            children: const [
              FlexibleWidget(),
              ExpandedWidget(),
            ],
          ),
        ],
      ),
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Expanded',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
 
class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.tealAccent,
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Flexible',
            style: TextStyle(
              color: Colors.teal,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
