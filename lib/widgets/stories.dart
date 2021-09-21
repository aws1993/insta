import 'package:flutter/material.dart';
class Stories extends StatefulWidget {
  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      height: 120,

      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          buildContainerStory(img: 'assets/images/a.png' , name: 'aws' ,box: true),
          buildContainerStory(img: 'assets/images/b.jpg',name: 'ahmed' ,box: false),
          buildContainerStory(img: 'assets/images/c.jpg' ,name: 'aws' ,box: false),
          buildContainerStory(img: 'assets/images/g.jpg',name: 'mohamed' ,box: false),
          buildContainerStory(img: 'assets/images/j.jpg' ,name:  'name' ,box:  false),

        ],
      ),
    );
  }
  Widget buildContainerStory({String img , String name ,bool box }) {
    return Column(
      children: [
        Container(
          height: 75,
          width:75 ,
          padding: EdgeInsets.all(3),
          margin: EdgeInsets.only(right: 10),

          decoration: (box==false) ?BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.red,
                  Colors.yellow,
                ]
            ),
            borderRadius: BorderRadius.circular(37) ,

          ): null,


          child: Container(
            height: 70,
            width: 70,

            decoration: BoxDecoration(
                border: Border.all(width: 3 ,color: Colors.white),
                borderRadius: BorderRadius.circular(35) ,
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                )
            ),
            child:(box == true)?Stack(
              children: [
                Positioned(
                  bottom:0,
                  right: 0,
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12.5),
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      ),
                    ),
                    child: Center(
                      child: Icon(Icons.add ,color: Colors.white,size: 15,),
                    ),

                  ),
                ),

              ],
            ):Container() ,


          ),
        ),
        SizedBox(height: 5,),
        Text(name),

      ],
    );
  }
}
