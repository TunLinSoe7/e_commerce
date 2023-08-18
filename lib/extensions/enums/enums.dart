import 'package:bottom_navigation_bar/pages/favourite_page.dart';
import 'package:bottom_navigation_bar/pages/my_home_page.dart';
import 'package:bottom_navigation_bar/pages/profile_page.dart';
import 'package:bottom_navigation_bar/pages/search_page.dart';
import 'package:flutter/cupertino.dart';

enum NavPage{
  homePage,
  likePage,
  searchPage,
  profilePage,
}
extension Pages on NavPage{
  Widget get screens{
   switch(this){
     case NavPage.homePage:
       return const MyHomePage();
     case NavPage.likePage:
       return const FavouritePage();
       case NavPage.searchPage:
       return const SearchPage();
       case NavPage.profilePage:
       return const ProfilePage();
   }
  }
}