part of 'pages.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> foodItems = [
    {'name': 'Pizza', 'image': 'assets/pizza.jpg'},
    {'name': 'Burger', 'image': 'assets/burger.jpg'},
    {'name': 'Pasta', 'image': 'assets/pasta.jpg'},
    {'name': 'Salad', 'image': 'assets/salad.jpg'},
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food App'),
      ),
      body: ListView.builder(
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              // leading: Image.asset(foodItems[index]['image']!),
              title: Text(foodItems[index]['name']!),
            ),
          );
        },
      ),
    );
  }
}