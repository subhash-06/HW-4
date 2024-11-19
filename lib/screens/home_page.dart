import 'package:flutter/material.dart';
// Import your custom NavigationDrawer
import 'package:hw4/widgets/navigation_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Example data for boards
    final boards = [
      {'name': 'General Discussion', 'image': 'assets/images/board_icon.png'},
      {'name': 'Announcements', 'image': 'assets/images/flutter_icon.png'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
        // Use your custom NavigationDrawer here
      body: ListView.builder(
        itemCount: boards.length,
        itemBuilder: (context, index) {
          final board = boards[index];
          return ListTile(
            leading: Image.asset(board['image'] ?? '', width: 40, height: 40),
            title: Text(board['name'] ?? 'No name'),
            onTap: () {
              Navigator.pushNamed(context, '/chat', arguments: board['name'] ?? 'Unnamed Board');
            },
          );
        },
      ),
    );
  }
}
