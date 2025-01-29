import 'package:fe_jajan_flutter_app/ui/pages/pages.dart';
import 'package:get/get.dart';

class AppRoutes {
  final List<GetPage> listRoutes = [
    GetPage(name: '/signin', page: () => const SignInPage()),
    GetPage(name: '/signup', page: () => const SignUpPage()),
  ];
}
