import 'package:flutter/material.dart';
import 'package:todo_flutter_app/nav_bar_pages.dart/profile.dart';

import '../pages/home_page.dart';
import 'add_list.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages=[
    HomePage(),
    // ignore: prefer_const_constructors
    ImagePage(),
    // ignore: prefer_const_constructors
    ProfilePage()

    
  ];
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      backgroundColor: Colors.white,
      
     bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.6),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "Add", icon: Icon(Icons.add_box_outlined)),
            BottomNavigationBarItem(label: "Person", icon: Icon(Icons.person)),
          ],
          currentIndex: index,
          onTap: (int i){
            setState(() {
              index=i;
            });
          },
        ),
    );
    
  }
}