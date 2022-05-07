import 'package:flutter/material.dart';
import 'package:meal_app/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(BuildContext context,String text, Function function) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Card(
        shadowColor: Colors.tealAccent,
        child: ListTile(
          onTap: function,
//          leading: Icon(
//            iconData,
//            size: 30.0,
//          ),
          title: Text(
            text,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120.0,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(20.0),
            color: Theme.of(context).backgroundColor,
            child: Center(
              child: Text(
                'اتعلم معنا',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          buildListTile(
            context,
            'عام جديد',

            () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/');
            },
          ),
          buildListTile(
            context,
            'بلادي',

                () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/');
            },
          ),
          buildListTile(
            context,
            'المكتبة المدرسية',

                () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/');
            },
          ),
          buildListTile(
            context,
            'القناطر الخيرية',

                () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/');
            },
          ),
          buildListTile(
            context,
            'اﻹختبارات',

                () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/');
            },
          ),
          SizedBox(height: 35.0),
          buildListTile(
            context,
            'عن الطلاب',

                () {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/');
            },
          ),
          buildListTile(
            context,
            'Devloped by',
//            Icons.settings,
                () {
                  Navigator.pop(context);
              Navigator.of(context).pushNamed(FiltersScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
