import 'package:flutter/material.dart';
import 'package:meal_app/widgets/category_item.dart';
import '../dummy_data.dart';

class TestingFoo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
//        padding: EdgeInsets.all(25.0),
        children: [
          custmContainer(context: context,function: (){}),
          Center(
            child: Text('Faissol'),
          ),
          Center(
            child: Text('Faissol'),
          ),
        ],
      ),
    );
  }

  Widget custmContainer({@required BuildContext context,String title,String description,@required Function function}) {
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
                      borderRadius: BorderRadius.circular(10.0),
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
                        Text('Foo',style: TextStyle(fontSize: 22)),
                        Text('FooFooFooFooFooFoo'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Icon(Icons.arrow_back_ios),
//          alignment: AlignmentDirectional(33, 23),
              height: 50.0,
              width: 50.0,
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
