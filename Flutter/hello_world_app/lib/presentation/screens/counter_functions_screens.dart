import 'package:flutter/material.dart'; // IMPM

class Counter_Functions_Screen extends StatefulWidget {



  const Counter_Functions_Screen({super.key});

  @override
  State<Counter_Functions_Screen> createState() => _Counter_Functions_ScreenState();
}

class _Counter_Functions_ScreenState extends State<Counter_Functions_Screen> {

  int clickCounter = 0;
  String clickText = 'Clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Function'),
          actions: [
            IconButton(onPressed: () {
              clickCounter = 0;
              setState(() {});
            }, icon: const Icon(Icons.refresh_rounded))
          ],
          
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
        floatingActionButton: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtom(icon: Icons.refresh_outlined),

            SizedBox(height: 15,),

            CustomButtom(icon: Icons.plus_one_outlined),

            SizedBox(height: 15,),

            CustomButtom( icon: Icons.exposure_minus_1_outlined),
          ],
        ),
    );
  }
}

class CustomButtom extends StatelessWidget {

  final IconData icon;


  const CustomButtom({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: () {},
    child: Icon(icon),
    );
  }
}

