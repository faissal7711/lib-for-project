import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image of SideMenu (Drawer)
        Image(
          width: double.infinity,
          height: double.infinity,
          image: AssetImage('assets/images/bg_for _app.jpg'),
          fit: BoxFit.fill,
        ),
        Center(
          child: Text('المرااجعة',style: TextStyle(fontSize: 33,color: Colors.green)),
        ),
      ],
    );
  }
}
