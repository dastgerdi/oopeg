import 'package:flutter/cupertino.dart';

enum NavItems{
  home,
  categories,
  explore,
  area,
  profile
}

extension Parsing on NavItems{
  String title(){
    switch (this){
      case NavItems.home: {
        return 'Home';

      }

      case NavItems.categories: {
        return 'Categories';

      }

      case NavItems.explore: {
        return 'Explore';

      }

      case NavItems.area: {
        return 'Area';

      }

      case NavItems.profile: {
        return 'Profile';

      }

      default: {
        return 'Home';
      }
    }
  }
  IconData icon(){
    switch (this){
      case NavItems.home: {
        return CupertinoIcons.home;

      }

      case NavItems.categories: {
        return CupertinoIcons.list_bullet;

      }

      case NavItems.explore: {
        return CupertinoIcons.square_grid_2x2;

      }

      case NavItems.area: {
        return CupertinoIcons.location;

      }

      case NavItems.profile: {
        return CupertinoIcons.person;

      }

      default: {
        return CupertinoIcons.home;
      }
    }
  }
}