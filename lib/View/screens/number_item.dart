import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/models/classes/class_number.dart';
import 'package:learning_app/models/obj/number_obj.dart';
class NumberItem extends StatelessWidget {
   NumberItem({Key? key}) : super(key: key);
  AudioCache player=AudioCache(prefix: 'assets/sounds/numbers/');
   AudioPlayer audio =AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Number '),
      ),
      body: Container(
        //height: 90,
        color: Colors.orange,

        child: ListView.builder(
          itemCount: numbers.length,


            itemBuilder: (context,index){
            return Row(

              children: [
                Container(
                  width: 100,
                    color: Colors.grey,
                    child: Image.asset(numbers[index].imgUrl)),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 7),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(numbers[index].jbNum,style: TextStyle(fontSize: 18),),
                      Text(numbers[index].enNum,style: TextStyle(fontSize: 18),)

                    ],
                  ),
                ),
                Spacer(flex:1 ,),


                   IconButton(onPressed: (){
                    player.play(numbers[index].sound);

                  }, icon: Icon(Icons.play_arrow,size: 20,color:Colors.white ,))

              ],
            );
            }
        ),
    ),
    );
  }
}
