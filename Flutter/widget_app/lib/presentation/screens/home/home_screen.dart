import 'package:flutter/material.dart';
import 'package:widget_app/config/menu/menu_items.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
    );

  }
}


class _HomeView extends StatelessWidget {
  const _HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
      
      final color = Theme.of(context).colorScheme;

        return ListTile(
          leading: Icon(menuItem.icon, color: color.primary),
          trailing: Icon(Icons.arrow_forward_ios_rounded, color: color.primary),
          title: Text(menuItem.title),
          subtitle: Text(menuItem.subTitle),
          onTap: () {
            // navegar a otra pantalla
            Navigator.pushNamed(context, menuItem.link);
          },
        );
      }
      );
  }
}