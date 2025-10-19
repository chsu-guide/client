import 'package:flutter/material.dart';
import 'package:chsu_schedule_app/interfaces/schedule_page.dart';
import 'package:chsu_schedule_app/interfaces/settings_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const ChsuApp());
}

class ChsuApp extends StatelessWidget {
  static const Color chsuMainColor = Color(0xFFEF3841);

  const ChsuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Расписание ЧГУ',
      theme: ThemeData(colorSchemeSeed: chsuMainColor, useMaterial3: true),
      home: const NavigationPage(),
      localizationsDelegates: [GlobalMaterialLocalizations.delegate],
      supportedLocales: const [
        //Locale('en'),
        Locale('ru'),
      ],
    );
  }
}

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  final List<BottomNavigationBarItem> _navBarItems = const [
    BottomNavigationBarItem(
      label: "Расписание",
      icon: Icon(Icons.calendar_today_outlined),
    ),
    BottomNavigationBarItem(
      label: "Карта",
      icon: Icon(Icons.location_on_outlined),
    ),
    //BottomNavigationBarItem(label: "Настройки", icon: Icon(Icons.settings_outlined)),
  ];
  final List<Widget> _navPages = const [
    SchedulePage(),
    Center(child: Text("Under Construction!")),
    SettingsPage(),
  ];
  int _currentPageIndex = 0;

  void _bottomBarNavigation(int index) => setState(() {
    _currentPageIndex = index;
  });

  @override
  void initState() => super.initState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _navPages[_currentPageIndex]),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        currentIndex: _currentPageIndex,
        type: BottomNavigationBarType.fixed,
        items: _navBarItems,
        onTap: _bottomBarNavigation,
      ),
    );
  }
}
