//main.dart
import 'package:flutter/material.dart';
import 'package:sigra/menu/church_page.dart';
import 'package:sigra/menu/event_page.dart';
import 'package:sigra/menu/home_page.dart';
import 'package:sigra/menu/laporan_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Navigation(),
    );
  }
}

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.church),
            icon: Icon(Icons.church_outlined),
            label: 'Gereja',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.event),
            icon: Icon(Icons.event_outlined),
            label: 'Acara/Event',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.document_scanner),
            icon: Icon(Icons.document_scanner_outlined),
            label: 'Laporan',
          ),
        ],
      ),
      body: IndexedStack(
        index: currentPageIndex,
        children: const <Widget>[
          HomePage(),
          ChurchsPage(),
          EventsPage(),
          ReportsPage(),
        ],
      ),
    );
  }
}
