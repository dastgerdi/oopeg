import 'package:flutter/cupertino.dart';
import 'package:oopeg/Enums/enums.dart';
import 'package:oopeg/Screens/Home/home.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: NavItems.values.map((e) =>
              BottomNavigationBarItem(
                  icon: Icon(e.icon()),
                  label: e.title()
              )).toList(),
        ),
        tabBuilder: (BuildContext context, int index){
          if (index == 0) {

            return const HomeScreen();

          } else {

            return CupertinoTabView(
              builder: (context) => CupertinoPageScaffold(
                child: Center(
                  child: Text(index.toString()),
                ),
              ),
            );

          }
        }
    );
  }
}
