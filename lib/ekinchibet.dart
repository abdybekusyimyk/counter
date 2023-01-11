import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Ekinchibet extends StatelessWidget {
  Ekinchibet({Key? key, required this.ekinbetsan}) : super(key: key);

  int ekinbetsan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black26,
        title: const Text("Tapshyrma 02"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.black26, borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'san: ',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              Text(
                '$ekinbetsan',
                style: const TextStyle(color: Colors.black, fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
