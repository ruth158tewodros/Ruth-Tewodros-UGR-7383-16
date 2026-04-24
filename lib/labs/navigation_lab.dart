import 'package:flutter/material.dart';

void main() {
  runApp(BottomNavApp());
}

class BottomNavApp extends StatelessWidget {
  const BottomNavApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Demo',
      home: MainScreen(),
    );
  }
}
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    FavoritesScreen(),
    NavProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Details"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailsScreen()),
            );
          },
        ),
      ),
    );
  }
}
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details")),
      body: Center(
        child: ElevatedButton(
          child: Text("Go Back"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Favorites Screen"),
    );
  }
}
class NavProfileScreen extends StatelessWidget {
  const NavProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Profile Screen"),
    );
  }
} 