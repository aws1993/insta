


import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:insta/myProvider/myProviderInsta.dart';
import 'package:provider/provider.dart';

class PostScreen extends StatefulWidget {
  String imgProfile ;
  String name ;
  String imgPost ;
  String numLike;


  PostScreen({this.imgProfile, this.name, this.imgPost, this.numLike});

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    padding: EdgeInsets.all(3),
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.red,
                            Colors.yellow,
                          ]),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          border: Border.all(width: 3, color: Colors.white),
                          borderRadius: BorderRadius.circular(35),
                          image: DecorationImage(
                            image: AssetImage(widget.imgProfile),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Text(
                    widget.name,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              IconButton(icon: Icon(Icons.more_horiz),onPressed: (){},),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2,
            child: Image(
              image: AssetImage(widget.imgPost),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: (){
                    Provider.of<MyproviderInsta>(context ,listen: false).toggal();
                    },
                    icon:Provider.of<MyproviderInsta>(context).isColor?Icon(FontAwesome.heart):Icon(FontAwesome.heart_o) ,
                    disabledColor: Colors.indigo,
                    iconSize: 20,
                   color: Provider.of<MyproviderInsta>(context).isColor? Colors.red :Colors.black,


                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    FontAwesome.comment_o,
                    size: 20,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    FontAwesome.send_o,
                    size: 20,
                  )
                ],
              ),
              Icon(Icons.bookmark ,size: 20,),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(text: widget.numLike, style: TextStyle(color: Colors.black)),
            TextSpan(
              text: 'Like',
              style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),
            )
          ])),
          SizedBox(
            height: 10,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(text: widget.name, style: TextStyle(color: Colors.black)),
            TextSpan(
              text: 'Hi   ',
              style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: '#Hello World',
              style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),
            )
          ])),
          SizedBox(
            height: 10,
          ),
          Text(
            'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),

        ],
      ),
    );
  }
}
