import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:learning_app/models/obj/number_obj.dart';
class Colorss extends StatelessWidget {
  Colorss ({Key? key}) : super(key: key);
  AudioCache player=AudioCache(prefix: 'assets/sounds/colors/');
  AudioPlayer audio =AudioPlayer();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:   AppBar(
        backgroundColor: Colors.brown,
        title: Text('Colors '),
      ),
      body: Container(
        //height: 90,
        color: Colors.deepPurple,

        child: ListView.builder(
            itemCount: colors.length,


            itemBuilder: (context,index){
              return Row(

                children: [
                  Container(
                      width: 100,
                      color: Colors.grey,
                      child: Image.asset(colors[index].imgUrl)),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 7),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(colors[index].jbNum,style: TextStyle(fontSize: 18),),
                        Text(colors[index].enNum,style: TextStyle(fontSize: 18),)

                      ],
                    ),
                  ),
                  Spacer(flex:1 ,),


                  IconButton(onPressed: (){
                    player.play(colors[index].sound);

                  }, icon: Icon(Icons.play_arrow,size: 20,color:Colors.white ,))

                ],
              );
            }
        ),
      ),
    );
  }
}
