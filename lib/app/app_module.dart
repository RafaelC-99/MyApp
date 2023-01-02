import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_app/app/modules/login/login_page.dart';

import 'modules/home/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
        ChildRoute('/login', child: (context, args) => const LoginPage()),
      ];
}
