import 'package:flutter/material.dart';
import 'package:widget/responsive_screen.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Size screenSize = MediaQuery.of(context).size;
    // Orientation orientation = MediaQuery.of(context).orientation;

    // return Scaffold(
    //   backgroundColor: Colors.blueGrey,
    //   body: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     crossAxisAlignment: CrossAxisAlignment.stretch,
    //     children: [
    //       Text(
    //         'Screen width: ${screenSize.width.toStringAsFixed(2)}',
    //         style: const TextStyle(color: Colors.white, fontSize: 18),
    //         textAlign: TextAlign.center,
    //       ),
    //       Text(
    //         'Orientation: $orientation',
    //         style: const TextStyle(color: Colors.white, fontSize: 18),
    //         textAlign: TextAlign.center,
    //       ),
    //     ],
    //   ),
    // );

    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return ListView(
              children: _generateContainers(),
            );
          } else if (constraints.maxWidth < 900) {
            return GridView.count(
              crossAxisCount: 2,
              children: _generateContainers(),
            );
          } else {
            return GridView.count(
              crossAxisCount: 6,
              children: _generateContainers(),
            );
          }
        },
      ),
    );
  }

  List<Widget> _generateContainers() {
    return List<Widget>.generate(20, (index) {
      return Container(
        margin: const EdgeInsets.all(8),
        color: Colors.blueGrey,
        height: 200,
      );
    });
  }
}
