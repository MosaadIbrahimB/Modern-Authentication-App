import 'package:flutter/material.dart';
import 'package:modern_authentication_app/core/utils/app_color.dart';
import 'package:modern_authentication_app/feature/home/data/repo/repo.dart';

import '../widget/app_bar_fruits_widget.dart';
import '../widget/carousel_slider_widget.dart';
import '../widget/category_list_widget.dart';
import '../widget/product_list_widget.dart';
import '../widget/see_all_widget.dart';

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
            CarouselSliderWidget(),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CategoryListWidget(),
                  SizedBox(height: 20),
                  SeeAllWidget(),
                  SizedBox(height: 10),
                  ProductListWidget(),
                  SizedBox(height: 10),

                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.green,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    width: double.infinity,
                    height: 70,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(width: 8),
                        scrollDirection: Axis.horizontal ,
                      itemCount: Repo.bagProduct.length,
                      itemBuilder: (context, index) {
                        return CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.grey[200],
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: Image.asset(
                              fit: BoxFit.fill,
                              Repo.bagProduct[index].image,
                            ),
                          ),
                        );
                      },
                    ),
                    // Row(
                    //   children: [
                    //     SizedBox(width: 10),
                    //     CircleAvatar(
                    //       radius: 25,
                    //       backgroundColor: Colors.grey[200],
                    //       child: SizedBox(
                    //         width: 50,
                    //         height: 50,
                    //         child: Image.asset(
                    //           fit: BoxFit.fill,
                    //           "assets/images/fruit/f4.png",
                    //         ),
                    //       ),
                    //     )
                    //   ],
                    // ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
