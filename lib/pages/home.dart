import 'package:flutter/material.dart';
import 'package:insta/myProvider/myProviderInsta.dart';
import 'package:insta/widgets/post.dart';
import 'package:insta/widgets/stories.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Stories" ,style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      Switch(
                          value: Provider.of<MyproviderInsta>(context).isVal,
                          onChanged: (bool val)=> Provider.of<MyproviderInsta>(context ,listen: false).onChange(val),
                        activeColor: Colors.white,
                        inactiveTrackColor: Colors.black,
                      ),
                      Icon(Icons.play_arrow ,color: Colors.indigo,),
                      SizedBox(width: 10,),
                      Text("Watch all" ,style: TextStyle(fontWeight: FontWeight.bold),),
                      Container(),
                    ],
                  )
                ],
              ),
            ),

           Stories(),
            Divider(
              thickness: 2,
            ),
            PostScreen(imgProfile: 'assets/images/c.jpg', imgPost: 'assets/images/g.jpg', name: 'Aws ', numLike: '100 ',),
            PostScreen(imgProfile: 'assets/images/j.jpg', imgPost: 'assets/images/b.jpg', name: 'Aws ', numLike: '100 ',),
            PostScreen(imgProfile: 'assets/images/b.jpg', imgPost: 'assets/images/j.jpg', name: 'Aws ', numLike: '100 ',),




          ],
        ),
      ),
    );
  }

}
