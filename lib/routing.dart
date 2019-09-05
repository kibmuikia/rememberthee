import 'views/home.dart';
import 'views/about.dart';
import 'views/auth/login.dart';

final routes = {
  '/': (context) => new HomeView(),
  '/about': (context) => new AboutView(),
  '/login': (context) => new LoginView(),
};
