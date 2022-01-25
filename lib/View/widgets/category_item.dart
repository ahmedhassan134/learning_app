import 'package:flutter/material.dart';
class Category extends StatelessWidget {
Category({this.text,this.clr,this.func});
  String ? text;
  Color ? clr;
  Function()? func;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: func,
      child: Container(
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 65,
        color: clr,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 10),
          child: Text(text! ,style: TextStyle(fontSize: 18),),
        ),
      ),
    );
  }
}
