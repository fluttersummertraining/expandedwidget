import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Responsive UI"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Expanded(flex: 2, child: designerRowCreation()),
            const SizedBox(
              height: 10,
            ),
            Expanded(flex: 1, child: customRoundedContainer()),
            const SizedBox(
              height: 10,
            ),
            Expanded(flex: 2, child: designerRowCreation()),
            const SizedBox(
              height: 10,
            ),
            Expanded(flex: 1, child: customRoundedContainer()),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

Widget designerRowCreation() {
  return Row(
    children: [
      Expanded(
        flex: 2,
        child: customRoundedContainer(
            //width: 250,
            //height: 200,
            ),
      ),
      SizedBox(
        width: 10,
      ),
      Expanded(
        flex: 1,
        child: customRoundedContainer(
            //width: 150,
            //height: 200,
            ),
      ),
      //customRoundedContainer(),
    ],
  );
}

Widget customRoundedContainer() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.blueGrey,
      borderRadius: BorderRadius.circular(
        25,
      ),
    ),
  );
}
