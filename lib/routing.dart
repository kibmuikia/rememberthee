import 'views/home.dart';
import 'views/about.dart';
import 'views/contact.dart';

import 'views/auth/login.dart';
import 'views/auth/register.dart';

import 'views/orbituaries/obituaries.dart';
import 'views/orbituaries/postupload.dart';

final routes = {
  '/': (context) => new MyHomePage(),
  // '/home': (BuildContext context) => new MyHomePage(),
  '/about': (context) => new AboutPage(),
  '/contact': (context) => new ContactPage(),
  '/upload': (context) => new UploadPage(),
  '/view': (context) => new ListObituariesPage(),
  '/register': (context) => new RegisterPage(),
  '/login': (context) => new LoginPage(),
};
