part of 'widgets.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoOnboarding(
            onPressedOnLastPage: () {
              Get.offNamed('/signin');
            },
            pages: const [
              CupertinoOnboardingPage(
                title: Text('Share jajanan terenak loe'),
                body: Icon(
                  FluentIcons.food_pizza_24_regular,
                  size: 200,
                ),
              ),
              CupertinoOnboardingPage(
                title: Text('Loe juga bisa komen di postingan.'),
                body: Icon(
                  FluentIcons.chat_multiple_24_regular,
                  size: 200,
                ),
              ),
              CupertinoOnboardingPage(
                title: Text('Jangan lupa taro harga sama lokasinya.'),
                body: Icon(
                  FluentIcons.food_24_regular,
                  size: 200,
                ),
              ),
            ],
          );
  }
}