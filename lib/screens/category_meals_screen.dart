import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/widgets/meal_item.dart';

import '../dummy_data.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = 'category_meals';
  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String categoryTitle;
  List<Meal> categoryMeals;

  void removeMeal(String mealId) {
    setState(() {
      categoryMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  void didChangeDependencies() {
    final routArg =
    ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routArg['id'];
    categoryTitle = routArg['title'];
    categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
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
          ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            itemBuilder: (ctx, index) {
              return MealItem(
                id: categoryMeals[index].id,
                imageURL: categoryMeals[index].imageUrl,
                title: categoryMeals[index].title,
                duration: categoryMeals[index].duration,
                complexity: categoryMeals[index].complexity,
                affordability: categoryMeals[index].affordability,
                removeItem: removeMeal,
              );
            },
            itemCount: categoryMeals.length,
          ),
        ],
      ),
    );
  }
}
//