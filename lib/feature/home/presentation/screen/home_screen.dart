import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modern_authentication_app/core/utils/app_color.dart';
import 'package:modern_authentication_app/core/utils/app_text_style.dart';
import '../../data/repo/repo.dart';
import '../widget/app_bar_fruits_widget.dart';
import '../widget/carousel_slider_widget.dart';
import '../widget/category_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: AppBarWidget()),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CarouselSliderWidget(item: Repo.items),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CategoryListWidget(),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Fruits",style: AppTextStyle.inter16BlackW700),
                      Text("See all",style: AppTextStyle.inter16BlackW700.copyWith(
                        color: AppColor.green
                      )),
                    ],
                  ),
                  Image.asset("assets/images/fruit/f9.png")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
