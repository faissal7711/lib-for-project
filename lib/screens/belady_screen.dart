// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';

class BeladyScreen extends StatelessWidget {
  static const routeName = 'belady_detail';

  Widget buildSectionTitle(BuildContext ctx, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        text,
        style: Theme.of(ctx).textTheme.subtitle1,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      width: 300.0,
      height: 150.0,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final melId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == melId);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
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
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 300.0,
                  width: double.infinity,
                  child: Image.network(
                    selectedMeal.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                buildSectionTitle(context, 'Ingrediants'),
                buildContainer(
                  ListView.builder(
                    itemBuilder: (ctx, index) => Card(
                      color: Theme.of(context).accentColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 10.0,
                        ),
                        child: Text(selectedMeal.ingredients[index]),
                      ),
                    ),
                    itemCount: selectedMeal.ingredients.length,
                  ),
                ),
                buildSectionTitle(context, 'Steps'),
                buildContainer(
                  ListView.builder(
                    itemBuilder: (ctx, index) => Column(
                      children: [
                        ListTile(
                          title: Text(selectedMeal.steps[index]),
                          leading: CircleAvatar(
                            child: Text('# ${index + 1}'),
                          ),
                        ),
                      ],
                    ),
                    itemCount: selectedMeal.steps.length,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: () {
//          Navigator.of(context).pop(melId);
//        },
//        child: Icon(Icons.delete_outline),
//      ),
    );
  }
}
