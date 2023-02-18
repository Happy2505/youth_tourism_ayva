import 'package:flutter/material.dart';

import '../Theme/app_color.dart';
import '../events_screen/events_widget.dart';
import '../home_screen/home_widget.dart';

class MainScreenWidget extends StatefulWidget {
  MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeWidget(),
    HomeWidget(),
    EventsScreenWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined, size: 28), label: 'Главная'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.location_on_outlined, size: 28), label: 'Проживание'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.note, size: 28), label: 'События'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, size: 28), label: 'Профиль'),
            ],
            selectedItemColor: Color.fromARGB(255, 55, 74, 0),
            // backgroundColor: const Color.fromARGB(255, 237, 237, 237),
            unselectedItemColor: const Color.fromARGB(255, 153, 153, 153),
            elevation: 10,
            // selectedIconTheme: const IconThemeData(
            //   shadows: [
            //     BoxShadow(
            //       color: Colors.black,
            //       blurRadius: 50,
            //     ),
            //   ],
            // ),
            // showSelectedLabels: false,
            // showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
          body: Stack(
            children: [
              _widgetOptions.elementAt(_selectedIndex),
            ],
          ),
        )
    );
  }
}
