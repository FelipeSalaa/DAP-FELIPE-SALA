import 'entities.dart';
import 'package:list_modify/presentation/Screens/ListModify.dart';
import 'package:list_modify/presentation/Screens/ListView.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      name: LoginScreen.name,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/home',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/detail',
      name: DetailScreen.name,
      builder: (context, state) => DetailScreen(materia: state.extra as Materia),
    ),
  ],
);