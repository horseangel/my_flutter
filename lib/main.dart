import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './homepagewidget.dart';
import './profilewidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home: const MyHomeNav(),
    );
  }
}

class MyHomeNav extends StatefulWidget {
  const MyHomeNav({Key? key}) : super(key: key);
  @override
  State<MyHomeNav> createState() => _MyHomeNavState();
}

class _MyHomeNavState extends State<MyHomeNav> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    Widget page;
    switch (selectedIndex) {
      case 0:
        page = const HomePageWidget();
        break;
      case 1:
        page = const ProfileWidget();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    var mainArea = ColoredBox(
      color: colorScheme.surfaceVariant,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: page,
      ),
    );

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              Expanded(child: mainArea),
              SafeArea(
                child: BottomNavigationBar(
                  selectedItemColor: const Color(0xFF2D006B),
                  unselectedItemColor: const Color(0xFF999999),
                  items: const [
                    BottomNavigationBarItem(
                      icon: FaIcon(
                        FontAwesomeIcons.house,
                        color: Color(0xFF2D006B),
                        //textDirection: TextDirection.ltr,
                        size: 24,
                      ),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: FaIcon(
                        FontAwesomeIcons.solidUser,
                        color: Color(0xFF2D006B),
                        //textDirection: TextDirection.rtl,
                        size: 24,
                      ),
                      label: 'Members',
                    ),
                    BottomNavigationBarItem(
                      icon: FaIcon(
                        FontAwesomeIcons.bagShopping,
                        color: Color(0xFF2D006B),
                        size: 24,
                      ),
                      label: 'Members',
                    ),
                    BottomNavigationBarItem(
                      icon: FaIcon(
                        FontAwesomeIcons.bell,
                        color: Color(0xFF2D006B),
                        size: 24,
                      ),
                      label: 'Members',
                    ),
                  ],
                  currentIndex: selectedIndex,
                  onTap: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
