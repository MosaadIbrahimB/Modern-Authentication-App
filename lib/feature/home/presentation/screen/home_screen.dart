import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modern_authentication_app/feature/favourite/presentation/screen/favourite_screen.dart';
import '../../../search/presentation/screen/search_screen.dart';
import '../control/home/home_cubit.dart';
import '../widget/app_bar_fruits_widget.dart';
import '../widget/bag_item_widget.dart';
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
    return Scaffold(
      appBar: AppBar(title: AppBarWidget()),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Stack(
            children: [
              screen[BlocProvider.of<HomeCubit>(context).getIndex()],
              Positioned
                (
                  bottom: 0,
                  child: Center(child: BagItemWidget())),
            ],
          );
        },
      ),

      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
