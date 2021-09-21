import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/data/local_data.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(appBar: AppBar(
      toolbarHeight: 270,
     flexibleSpace:  Padding(
       padding: const EdgeInsets.symmetric(horizontal: 15),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
                 'alisesmith',
                 style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
               ),
               Container(
                 width: 50,
                 height: 50,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(25),
                     image: DecorationImage(
                       image: AssetImage('assets/images/b.jpg'),
                       fit: BoxFit.cover,
                     )),
               )
             ],
           ),
           SizedBox(
             height: 10,
           ),
           Row(
             children: [
               buildColumn('245', 'posts'),
               SizedBox(
                 width: 20,
               ),
               buildColumn('7850', 'flowers'),
               SizedBox(
                 width: 20,
               ),
               buildColumn('715', 'flolowing'),
             ],
           ),
           SizedBox(
             height: 20,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                 width: 160,
                 height: 35,
                 decoration: BoxDecoration(
                   color: Colors.blue,
                   borderRadius: BorderRadius.circular(20),
                 ),
                 child: TextButton(
                   child: Text(
                     'Send Message',
                     style: TextStyle(color: Colors.white),
                   ),
                   onPressed: () {},
                 ),
               ),
               Container(
                 width: 70,
                 height: 35,
                 decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(20),
                     border: Border.all(color: Colors.grey, width: 2)),
                 child: TextButton(
                   child: Row(
                     children: [
                       Icon(
                         Icons.person,
                         size: 20,
                       ),
                       Icon(
                         Icons.close,
                         size: 20,
                       )
                     ],
                   ),
                   onPressed: () {},
                 ),
               ),
               Container(
                 width: 60,
                 height: 35,
                 decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(15),
                     border: Border.all(color: Colors.grey, width: 2)),
                 child: Center(
                   child: IconButton(
                     onPressed: () {},
                     icon: Icon(
                       Icons.arrow_downward,
                       size: 18,
                       color: Colors.blue,
                     ),
                   ),
                 ),
               ),
             ],
           ),
           SizedBox(
             height: 10,
           ),
           Row(
             children: [
               Text(
                 'Alise Smith',
                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
               ),
               Icon(
                 Icons.label_important,
                 color: Colors.blue,
               )
             ],
           ),
           Text(
             'fastion_designer , London Uk ',
             style: TextStyle(color: Colors.grey),
           ),



         ],
       ),
     ),
      bottom: TabBar(
        tabs: [
          Tab(icon: Icon(Icons.grid_view)),
          Tab(icon: Icon(Icons.menu )),
          Tab(icon: Icon(Icons.star_border_outlined)),
          Tab(icon: Icon(Icons.perm_contact_cal_outlined)),
        ],
      ),
    ),
      body:TabBarView(
        children: [
          Container(
            height: 400,
            child: GridView.builder(

                itemCount: listData.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2 / 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    crossAxisCount: 3),
                itemBuilder: (context ,index){
                  return Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(listData[index].imgUrl),
                          fit: BoxFit.cover,
                        )
                    ),
                  );
                }),
          ),
          Icon(Icons.directions_transit),
          Icon(Icons.directions_bike),
          Icon(Icons.directions_bike),
        ],
      ),
    ));
  }


  Column buildColumn(String num, String str) {
    return Column(
      children: [
        Text(
          num,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(str),
      ],
    );
  }
}
