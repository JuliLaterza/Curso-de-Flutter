
import 'package:go_router/go_router.dart';
import 'package:widget_app/presentation/screens/buttons/button_screen.dart';
import 'package:widget_app/presentation/screens/home/home_screen.dart';
import '../../presentation/screens/cards/cards_screen.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
  ]
);