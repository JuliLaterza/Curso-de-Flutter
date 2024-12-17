import 'package:flutter/material.dart'; // IMPM

class CounterScreen extends StatefulWidget {



  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;
  String clickText = 'Clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CounterScreen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
              Text('Click${clickCounter == 1 ? '' : 's'}', style: const TextStyle(fontSize: 30),)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          clickCounter++;
          setState(() {
            // if (clickCounter == 1) { clickText == 'click'; else pimpam  }
          }); //Basicamente es como "ok, ahora actualizalo"
        },
      child: const Icon(Icons.plus_one),),
      );
  }
}

