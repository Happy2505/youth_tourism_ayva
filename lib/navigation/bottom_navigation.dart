
import 'package:flutter/material.dart';
import 'package:youth_tourism_ayva/navigation/tab.dart';

import '../../Theme/app_color.dart';


// создаем три пункта меню
// const обозначает, что tabs является
// постоянной ссылкой и мы больше
// ничего не сможем ей присвоить,
// иначе говоря, она определена во время компиляции
const Map<TabItem, MyTab> tabs = {
  TabItem.Home : MyTab(name: "Главная", icon: Icons.home_outlined),
  TabItem.Residence : MyTab(name: "Проживание", icon: Icons.location_on_outlined),
  TabItem.Events : MyTab(name: "События", icon: Icons.note),
  TabItem.Profile : MyTab(name: "Профиль", icon: Icons.person)
};

class MyBottomNavigation extends StatelessWidget {
  // MyBottomNavigation принимает функцию onSelectTab
  // и текущую выбранную вкладку
  MyBottomNavigation({required this.currentTab, required this.onSelectTab});


  final TabItem currentTab;
  // ValueChanged<TabItem> - функциональный тип,
  // то есть onSelectTab является ссылкой на функцию,
  // которая принимает TabItem объект
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 55, 74, 0),
        backgroundColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(255, 153, 153, 153),
        elevation: 10,
        // selectedFontSize: 13,
        // iconSize: 20,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentTab.index,
        // пункты меню
        items: [
          _buildItem(TabItem.Home),
          _buildItem(TabItem.Residence),
          _buildItem(TabItem.Events),
          _buildItem(TabItem.Profile),
        ],
        // обработка нажатия на пункт меню
        // здесь мы делаем вызов функции onSelectTab,
        // которую мы получили через конструктор
        onTap: (index) => onSelectTab(
            TabItem.values[index]
        )
    );
  }

  // построение пункта меню
  BottomNavigationBarItem _buildItem(TabItem item) {
    return BottomNavigationBarItem(
        // указываем иконку
        icon: Icon(
          _iconTabMatching(item),
        ),
        // указываем метку или название
        label: tabs[item]!.name,
    );
  }

  // получаем иконку элемента
  IconData _iconTabMatching(TabItem item) => tabs[item]!.icon;


}