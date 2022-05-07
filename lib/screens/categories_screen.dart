import 'package:flutter/material.dart';
import 'package:meal_app/widgets/category_item.dart';
import '../dummy_data.dart';
import '../testing.dart';
import 'subject_main_screen.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
            child: GridView(
              children: [
                custmContainer(
                  context: context,
                  function: () {
                    Navigator.of(context).pushNamed(SubjectMainScreen.routeName);
                  },
                  title: DUMMY_CATEGORIES[0].title,
                  description: '',
                ),
                custmContainer(
                  context: context,
                  function: () {},
                  title: DUMMY_CATEGORIES[1].title,
                  description: '',
                ),
                custmContainer(
                  context: context,
                  function: () {},
                  title: DUMMY_CATEGORIES[2].title,
                  description: '',
                ),
                custmContainer(
                  context: context,
                  function: () {},
                  title: DUMMY_CATEGORIES[3].title,
                  description: '',
                ),
              ],
//              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.15),
//              children: DUMMY_CATEGORIES
//                  .map(
//                    (categories) => CategoryItem(
//                      categories.id,
//                      categories.title,
//                      categories.color,
//                    ),
//                  )
//                  .toList(),
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

  Widget custmContainer({
    @required BuildContext context,
    String title,
    String description,
    @required Function function,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: function,
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 120.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
//                    border: Border.all(
//                      color: Colors.black,
//                      width: 2.0,
//                    ),
                      borderRadius: BorderRadius.circular(20.0),
                      gradient: const LinearGradient(colors: [
//                        Colors.teal,
                        Colors.white,
                        Colors.tealAccent,
                      ]),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            offset: Offset(4.0, 4.0))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Text(title, style: TextStyle(fontSize: 22,color: Theme.of(context).primaryColor,fontWeight: FontWeight.w900))),
                        Text(description),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Icon(Icons.arrow_back_ios),
//          alignment: AlignmentDirectional(33, 23),
              height: 30.0,
              width: 30.0,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
//            border: Border.all(
//              color: Colors.black,
//              width: 2.0,
//            ),
                borderRadius: BorderRadius.circular(50.0),
                gradient: const LinearGradient(colors: [
                  Colors.tealAccent,
                  Colors.tealAccent,
                  Colors.greenAccent,
                  Colors.teal,
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
