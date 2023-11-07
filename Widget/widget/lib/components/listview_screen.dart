import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return
        // ListView
        // ListView(
        //   children: numberList.map((number) {
        //     return Container(
        //       height: 250,
        //       decoration: BoxDecoration(
        //         color: Colors.grey,
        //         border: Border.all(
        //           color: Colors.black,
        //         ),
        //       ),
        //       child: Center(
        //         child: Text(
        //           '$number',
        //           style: const TextStyle(
        //             fontSize: 50,
        //           ),
        //         ),
        //       ),
        //     );
        //   }).toList(),
        // );

        // ListView2
        //     ListView(
        //   children: [
        //     for (int number in numberList)
        //       Container(
        //         height: 250,
        //         decoration: BoxDecoration(
        //           color: Colors.grey,
        //           border: Border.all(
        //             color: Colors.black,
        //           ),
        //         ),
        //         child: Center(
        //           child: Text(
        //             '$number',
        //             style: const TextStyle(
        //               fontSize: 50,
        //             ),
        //           ),
        //         ),
        //       )
        //   ],
        // );

        // ListView.builder
        // ListView.builder(
        //     itemCount: numberList.length,
        //     itemBuilder: ((BuildContext context, int index) {
        //       return Container(
        //         height: 250,
        //         decoration: BoxDecoration(
        //           color: Colors.grey,
        //           border: Border.all(
        //             color: Colors.black,
        //           ),
        //         ),
        //         child: Center(
        //           child: Text(
        //             '${numberList[index]}',
        //             style: const TextStyle(
        //               fontSize: 50,
        //             ),
        //           ),
        //         ),
        //       );
        //     }));

        // ListView.separated
        ListView.separated(
      itemCount: numberList.length,
      itemBuilder: ((BuildContext context, int index) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: Center(
            child: Text(
              '${numberList[index]}',
              style: const TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        );
      }),
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
    );
  }
}
