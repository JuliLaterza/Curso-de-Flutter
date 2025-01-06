import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {

  const cards = <Map<String, dynamic>>[
    {'elevation': 2.0, 'color': Colors.red, 'label': 'One'},
    {'elevation': 4.0, 'color': Colors.green, 'label': 'Two'},
    {'elevation': 6.0, 'color': Colors.blue, 'label': 'Three'},
    {'elevation': 8.0, 'color': Colors.yellow, 'label': 'Four'},
    {'elevation': 10.0, 'color': Colors.orange, 'label': 'Five'},
    {'elevation': 12.0, 'color': Colors.purple, 'label': 'Six'},
  ];


  static const String name = 'cards_screen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: const _CardsView(),
    );
  }
}


class _CardsView extends StatelessWidget {
  const _CardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
      ]
    );
  }
}