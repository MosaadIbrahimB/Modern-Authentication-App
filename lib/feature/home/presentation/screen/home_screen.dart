import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modern_authentication_app/feature/favourite/presentation/screen/favourite_screen.dart';
import '../../../search/presentation/screen/search_screen.dart';
import '../control/home/home_cubit.dart';
import '../widget/app_bar_fruits_widget.dart';
import '../widget/body_home_screen_widget.dart';
import '../widget/bottom_navigation_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<Widget> screen = [
    BodyHomeScreenWidget(),
    FavScreen(),
    SearchScreen(),
    Center(child: Text("Profile")),
    Center(child: Text("Menu")),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Scaffold(
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return screen[BlocProvider.of<HomeCubit>(context).getIndex()];
          },
        ),
        bottomNavigationBar: BottomNavigationBarWidget(),
      ),
    );
  }
}

// appBar: AppBar(title: AppBarWidget()),
