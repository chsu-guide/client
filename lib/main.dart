import 'package:flutter/material.dart';
import 'package:chsu_schedule_app/interfaces/schedule_page.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const ChsuApp());
}

Future<String> loadJsonAsset(String path) async {
  return await rootBundle.loadString(path);
}

class Day {
  final DateTime day;
  final int index;
  final List<DayEntry> lessons;

  Day({
    required this.day,
    required this.index,
    required this.lessons,
  });
}

class DayEntry {
  final String time;
  final String name;
  final String type;
  final String location;
  final String cabinet;
  final List<String> instructors;
  final List<String> groups;

  DayEntry({
    required this.time,
    required this.name,
    required this.type,
    required this.location,
    required this.cabinet,
    required this.instructors,
    required this.groups
  });
}

void fuckThisShitImOut(List<dynamic> data) {
  int week = data[0][0] as int;
  List<Day> scheduleDays = [];
  
  debugPrint('Week number: $week');
  try {
    for (var item in data[0][1]) {
      List<DayEntry> dayEntries = [];
      for (var d in item[2]) {
        dayEntries.add(DayEntry(
          time: d[0] as String,
          type: d[1] as String,
          name: d[2] as String,
          location: d[3] as String,
          cabinet: d[4] as String,
          groups: List<String>.from(d[5] as List<dynamic>),
          instructors: List<String>.from(d[6] as List<dynamic>),
        ));
      }

      scheduleDays.add(Day(
        day: DateFormat('dd.MM.yyyy').parse(item[0] as String),
        index: item[1] as int,
        lessons: dayEntries,
      ));
    }
  } catch (e) {
    debugPrint('oops! $e');
  }

  for (var item in scheduleDays) {
    debugPrint('Day: ${DateFormat('dd.MM.yyyy').format(item.day)}, Index: ${item.index}\n\t');
    for (var lesson in item.lessons) {
      debugPrint('\tLesson: ${lesson.name}, Type: ${lesson.type}, Time: ${lesson.time}, Location: ${lesson.location}, Cabinet: ${lesson.cabinet}, Instructors: ${lesson.instructors.join(', ')}, Groups: ${lesson.groups.join(', ')}');
    }
  }
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
        Locale('en'),
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
  ];
  final List<Widget> _navPages = const [
    SchedulePage(),
    Center(child: Text("Under Construction!")),
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
