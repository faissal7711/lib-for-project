import 'package:flutter/material.dart';
import 'package:meal_app/widgets/category_item.dart';
import '../dummy_data.dart';
import '../widgets/custom_button.dart';
import '../widgets/main_drawer.dart';

class SubjectMainScreen extends StatelessWidget {
  static const routeName = '/subject_main_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(DUMMY_CATEGORIES[0].title),
      ),
      body: Stack(
        children: [
          // Background image of SideMenu (Drawer)
          Image(
            width: double.infinity,
            height: double.infinity,
            image: AssetImage('assets/images/bg_for _app.jpg'),
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.1),
            child: GridView(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height*0.15),
              children: [
                CustomButton(onPressed: (){}, text: 'شرح الدرس'),
                CustomButton(onPressed: (){}, text: 'فيديو توضيحي'),
                CustomButton(onPressed: (){}, text: 'اﻹختبارات'),
              ],
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
