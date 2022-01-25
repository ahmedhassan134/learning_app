import 'package:flutter/material.dart';
import 'package:learning_app/View/screens/colors.dart';
import 'package:learning_app/View/screens/family_member.dart';
import 'package:learning_app/View/screens/number_item.dart';
import 'package:learning_app/View/screens/phrases.dart';
import 'package:learning_app/View/widgets/category_item.dart';
import 'package:learning_app/models/classes/class_phrase.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('ToKu',style: TextStyle(fontSize: 20),),
        elevation: 0,
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            clr: Colors.orange,
            func: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return NumberItem();
              }));
            },
          ),
          Category(
            text: 'FamilyMember',
            clr: Colors.green,
            func: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return FamilyMember();
              }));
            },
          ),
          Category(
            text: 'Colors',
            clr: Colors.deepPurple,
            func: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return Colorss();
              }));
            },
          ),
          Category(
            text: 'Phrases',
            clr: Colors.blue,
            func: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return Phrase();
              }));
            },
          ),

        ],
      ),
    );
  }
}
