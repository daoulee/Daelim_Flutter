import 'package:go_router/go_router.dart';
import 'package:unitask/UI/pages/login/login_page.dart';
import 'package:unitask/app/router/app_page.dart';

final appRouter = GoRouter(
  initialLocation: AppPage.login.path,
  routes: [
    GoRoute(
      path: AppPage.login.path,
      name: AppPage.login.name,
      builder: (context, state) => const LoginPage(),
    ),
  ],
);
