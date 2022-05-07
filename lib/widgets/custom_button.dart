import 'package:flutter/material.dart';

//import '.../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    @required this.onPressed,
    @required this.text,
     this.width=140,
  }) : super(key: key);
  final Function() onPressed;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: FloatingActionButton.extended(
        backgroundColor: Theme.of(context).accentColor,
        icon: Icon(Icons.arrow_forward_ios,color: Theme.of(context).primaryColor,),
        onPressed: onPressed,
        label: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
