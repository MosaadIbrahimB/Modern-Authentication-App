import 'package:flutter/material.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../data/model/carousel_slider_model.dart';
class ItemSliderWidget extends StatelessWidget {
  const ItemSliderWidget({super.key, this.carouselSliderModel});

  final CarouselSliderModel? carouselSliderModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color:
        carouselSliderModel == null
            ? AppColor.green100
            : carouselSliderModel?.backColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                carouselSliderModel == null
                    ? "Up to 30% offer"
                    : carouselSliderModel!.offer,
                style: AppTextStyle.inter16BlackW700.copyWith(fontSize: 18),
              ),
              SizedBox(height: 4),
              Text(
                "Enjoy our big offer",
                style: AppTextStyle.inter16BlackW700.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 100,
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Text(
                    "Shop Now",
                    style: AppTextStyle.inter16BlackW700.copyWith(
                      fontSize: 16,
                      // color: Colors.white
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 150,
            height: 120,
            // color: Colors.red,
            child: Image.asset(
              fit: BoxFit.fill,
              carouselSliderModel == null
                  ? "assets/images/fruit/f1.png"
                  : carouselSliderModel!.image,
            ),
          ),
        ],
      ),
    );
  }
}
