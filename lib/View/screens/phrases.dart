import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/models/obj/number_obj.dart';
import 'package:learning_app/models/obj/phrases_obj.dart';
class Phrase extends StatelessWidget {
Phrase ({Key? key}) : super(key: key);
  AudioCache player=AudioCache(prefix: 'assets/sounds/phrases/');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   AppBar(
        backgroundColor: Colors.brown,
        title: Text(' Phrases '),
      ),
      body: Container(
        //height: 90,
        color: Colors.blue,

        child: ListView.builder(
            itemCount: phrases.length,


            itemBuilder: (context,index){
              return Row(

                children: [

                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 7),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(phrases[index].jpName,style: TextStyle(fontSize: 15),),
                        Text(phrases[index].enName,style: TextStyle(fontSize: 17),)

                      ],
                    ),
                  ),
                  Spacer(flex:1 ,),


                  IconButton(onPressed: (){
                    player.play(phrases[index].sound);

                  }, icon: Icon(Icons.play_arrow,size: 20,color:Colors.white ,))

                ],
              );
            }
        ),
      ),
    );
  }
}
