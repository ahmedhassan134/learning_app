import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/models/obj/number_obj.dart';
class FamilyMember extends StatelessWidget {
 FamilyMember({Key? key}) : super(key: key);
  AudioCache player=AudioCache(prefix: 'assets/sounds/family_members/');
  AudioPlayer audio =AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   AppBar(
      backgroundColor: Colors.brown,
      title: Text('Family Members '),
    ),
    body: Container(
    //height: 90,
    color: Colors.green,

    child: ListView.builder(
    itemCount: familyMemeber.length,


    itemBuilder: (context,index){
    return Row(

    children: [
    Container(
    width: 100,
    color: Colors.grey,
    child: Image.asset(familyMemeber[index].imgUrl)),
    Padding(
    padding: const EdgeInsetsDirectional.only(start: 7),
    child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
    Text(familyMemeber[index].jbNum,style: TextStyle(fontSize: 18),),
    Text(familyMemeber[index].enNum,style: TextStyle(fontSize: 18),)

    ],
    ),
    ),
    Spacer(flex:1 ,),


    IconButton(onPressed: (){
    player.play(familyMemeber[index].sound);

    }, icon: Icon(Icons.play_arrow,size: 20,color:Colors.white ,))

    ],
    );
    }
    ),
    ),
    );
  }
}
