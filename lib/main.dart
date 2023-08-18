import 'package:bottom_navigation_bar/bloc/home_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'constant/dimens/dimens.dart';
import 'constant/strings/strings.dart';
import 'extensions/enums/enums.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_)=>HomePageBloc(),child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageBloc provider = Provider.of<HomePageBloc>(context);
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        bottomNavigationBar: Container(
          color: Colors.deepPurple,
          padding: const EdgeInsets.all(kPS8px),
          child: GNav(
              onTabChange: (index){
                provider.setCurrentIndex=index;
              },
              gap: kPS8px,
              tabBackgroundColor: Colors.grey.withOpacity(kPS05px),
              rippleColor: Colors.grey.withOpacity(kPS03px),
              padding: const EdgeInsets.symmetric(horizontal: kPS20px,vertical: kPS18px),
              tabs: const [
                GButton(icon: Icons.home_outlined,text:kHomeText,iconActiveColor: Colors.white,iconColor: Colors.white,textColor: Colors.white,),
                GButton(icon: Icons.favorite_border_rounded,text:kLikeText,iconActiveColor: Colors.white,iconColor: Colors.white,textColor: Colors.white,),
                GButton(icon: Icons.search_rounded,text:kSearchText,iconActiveColor: Colors.white,iconColor: Colors.white,textColor: Colors.white,),
                GButton(icon: Icons.person_outline_outlined,text: kProfileText,iconActiveColor: Colors.white,iconColor: Colors.white,textColor: Colors.white,),
              ]),
        ) ,
        body: IndexedStack(
          index:provider.getCurrentIndex,
          children:NavPage.values.map((e) => e.screens).toList(),
        ),
      ),
    );
  }
}