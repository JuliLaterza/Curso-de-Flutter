import 'package:flutter/material.dart'; // IMPM

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CounterScreen'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('10', style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
              Text('Cantidad de clicks', style: TextStyle(fontSize: 30),)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
      },
      child: const Icon(Icons.plus_one),),
      );
  }
}

