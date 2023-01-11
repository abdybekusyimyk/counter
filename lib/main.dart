import 'package:flutter/material.dart';
import 'package:kurs/ekinchibet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App',
      theme: ThemeData(),
      home: const Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int san = 0;

  void kosh() {
    setState(() {
      san++;
    });
  }

  void kemit() {
    setState(() {
      san--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'Tapshyrma 01',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Ekinchibet(
                                ekinbetsan: san,
                              )));
                },
                child: Container(
                  width: 300,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'san: ',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        '$san',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      kemit();
                    },
                    child: Container(
                      height: 60,
                      width: 95,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.remove,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      kosh();
                    },
                    child: Container(
                      height: 60,
                      width: 95,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     ElevatedButton(
              //         onPressed: () {
              //           kemit();
              //         },
              //         child: Icon(Icons.remove_circle)),
              //     ElevatedButton(
              //         onPressed: () {
              //           kosh();
              //         },
              //         child: Icon(
              //           Icons.add,
              //           size: 30,
              //         ))
              //   ],
              // ),
            ],
          ),
        ));
  }
}
