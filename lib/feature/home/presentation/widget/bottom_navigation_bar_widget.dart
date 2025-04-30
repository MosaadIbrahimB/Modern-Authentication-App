import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../favourite/presentation/screen/favourite_screen.dart';
import '../control/home/home_cubit.dart';
import 'item_nav_widget.dart';
class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return BottomNavigationBar(
          landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
          currentIndex: BlocProvider.of<HomeCubit>(context).getIndex(),
          onTap: (value) {
            BlocProvider.of<HomeCubit>(context).changeIndex(value);
          },
          elevation: 0,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.green,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: ItemNavWidget(
                index: BlocProvider.of<HomeCubit>(context).getIndex(),
                numberItem: 0,
                icon: Icons.home,
              ),

              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: ItemNavWidget(
                index: BlocProvider.of<HomeCubit>(context).getIndex(),
                numberItem: 1,
                icon: Icons.favorite_border,
              ),

              label: "Favourite",
            ),
            BottomNavigationBarItem(
              icon: ItemNavWidget(
                index: BlocProvider.of<HomeCubit>(context).getIndex(),
                numberItem: 2,
                icon: Icons.search,
              ),

              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: ItemNavWidget(
                index: BlocProvider.of<HomeCubit>(context).getIndex(),
                numberItem: 3,
                icon: Icons.person_outline,
              ),

              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: ItemNavWidget(
                index: BlocProvider.of<HomeCubit>(context).getIndex(),
                numberItem: 4,
                icon: Icons.menu,
              ),
              label: "Menu",
            ),
          ],
        );
      },
    );
  }
}
