import 'package:chsu_schedule_app/interfaces/schedule_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Расписание ЧГУ',
      theme: ThemeData(colorSchemeSeed: const Color(0xFFEF3841)),
      home: const MyHomePage(),
      localizationsDelegates: [
         GlobalMaterialLocalizations.delegate
       ],
       supportedLocales: [
         const Locale('en'),
         const Locale('ru'),
       ],
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int currentPageIndex = 0;
  static const _kFontFam = 'ChsuLogo';
  static const String? _kFontPkg = null;
  static const IconData chsuLogo = IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);

  final List<NavigationDestination> mainPagesNav = <NavigationDestination>[
            NavigationDestination(
              label: "Расписание",
              selectedIcon: Icon(Icons.calendar_today),
              icon: Icon(Icons.calendar_today_outlined),
            ),
            NavigationDestination(
                label: "Карта",
                selectedIcon: Icon(Icons.location_on),
                icon: Icon(Icons.location_on_outlined),
            ),
          ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        title: const Icon(chsuLogo, color: Color(0xFFEF3841)),
        centerTitle: true,
      ),

      body: Container(
        alignment: AlignmentDirectional.topStart,
        child: <Widget> [
          SchedulePage(),
          Center(child: Text("Under Construction!!"),),
        ][currentPageIndex],

      ),

      bottomNavigationBar: NavigationBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        surfaceTintColor: Theme.of(context).colorScheme.onPrimary,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: mainPagesNav,
      ),
    );
  }
}
