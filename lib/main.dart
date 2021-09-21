import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:insta/myProvider/myProviderInsta.dart';
import 'package:insta/pages/chat.dart';
import 'package:insta/pages/home.dart';
import 'package:insta/pages/profile.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create:(_)=> MyproviderInsta()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      themeMode: Provider.of<MyproviderInsta>(context).tm,
      theme: ThemeData(primaryColor: Colors.white ,accentColor: Colors.blue),
      darkTheme: ThemeData(primaryColor: Colors.white),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  List<Widget> _pages = [
    HomeScreen(),
    Container(
      child: Center(
        child: Text('search'),
      ),
    ),
    Container(
      child: Center(
        child: Text('camera'),
      ),
    ),
    Container(
      child: Center(
        child: Text('favorate'),
      ),
    ),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Provider.of<MyproviderInsta>(context).backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Provider.of<MyproviderInsta>(context).backgroundColor,
        leading: IconButton(
          icon: Icon(
            FontAwesome.camera,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: Text(
          "Instagram",
          style: TextStyle(
            fontFamily: 'signatra',
            color: Colors.black,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              icon: Icon(
                FontAwesome.send,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=> Chat()));
              },
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
      backgroundColor: Provider.of<MyproviderInsta>(context).backgroundColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
            print(_currentIndex);
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_sharp), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.photo_camera_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        ],
      ),
    );
  }
}
