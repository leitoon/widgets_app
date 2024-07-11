import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screen/screens.dart';


final appRouter = GoRouter(
  initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context,state) {
            return  HomeScreen();
          },
        ),
        GoRoute(
          path: '/buttons',
          builder: (context,state) {
            return  ButtonsScreen();
          },
        ),
        GoRoute(
          path: '/cards',
          builder: (context,state) {
            return  CardsScreen();
          },
        ),
      ],
  );

