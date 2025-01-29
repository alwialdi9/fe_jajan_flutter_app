import 'package:fe_jajan_flutter_app/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_onboarding/cupertino_onboarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:fe_jajan_flutter_app/ui/widgets/widgets.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Jajanan Guenak',
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/',
            page: () => const CupertinoApp(
                  home: CupertinoPageScaffold(
                    navigationBar: CupertinoNavigationBar(
                      middle: Text('Jajanan Guenak'),
                    ),
                    child: SafeArea(
                      child: Onboarding(),
                    ),
                  ),
                )),
        GetPage(name: '/signin', page: () => const SignInPage()),
        GetPage(name: '/signup', page: () => const SignUpPage()),
      ],
    );
  }
}
