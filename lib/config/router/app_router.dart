import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screen/screens.dart';


final appRouter = GoRouter(
  initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          name: HomeScreen.name,
          builder: (context,state) {
            return  HomeScreen();
          },
        ),
        GoRoute(
          name: ButtonsScreen.name,
          path: '/buttons',
          builder: (context,state) {
            return  ButtonsScreen();
          },
        ),
        GoRoute(
          name: CardsScreen.name,
          path: '/cards',
          builder: (context,state) {
            return  CardsScreen();
          },
        ),
        GoRoute(
          name: ProgressScreen.name,
          path: '/progress',
          builder: (context,state) {
            return  ProgressScreen();
          },
        ),
      ],
  );

