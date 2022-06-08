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
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 2,
                child: customRoundedContainer(
                  width: 250,
                  height: 200,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: customRoundedContainer(
                  width: 150,
                  height: 200,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              //customRoundedContainer(),
            ],
          ),
        ],
      ),
    );
  }
}

Widget customRoundedContainer({required double width, required double height}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: Colors.blueGrey,
      borderRadius: BorderRadius.circular(
        25,
      ),
    ),
  );
}
