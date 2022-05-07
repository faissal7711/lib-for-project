import 'package:flutter/material.dart';
import 'package:meal_app/widgets/main_drawer.dart';
import 'categories_screen.dart';
import 'favorites.dart';
import 'subject_main_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
//  var currentPage = DrawerSection.
  final List<Map<String, Object>> _page = [
    {
      'page': CategoriesScreen(),
      'title': 'المنهج',
    },
    {
      'page': Favorites(),
      'title': 'المراجعة',
    },
  ];
  int _selectPageIndex = 0;
  void _selectPage(int value) {
    setState(() {
      _selectPageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(_page[_selectPageIndex]['title']),
//        leading: Icon(Icons.menu,),
      ),
      body: _page[_selectPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).colorScheme.secondary,
//        unselectedItemColor: Theme.of(context).canvasColor,
        currentIndex: _selectPageIndex,
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'المنهج',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'المراجعة',
          ),
        ],
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0),
      ),
    );
  }
}
