import 'package:flutter/material.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../data/repo/repo.dart';
import 'icon_add_item_widget.dart';
import 'icon_sub_item_widget.dart';

class ListItemOfBottomSheetWidget extends StatelessWidget {
  const ListItemOfBottomSheetWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Repo.bagProduct.length,
      itemBuilder:
          (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
              color: Colors.grey.shade50,
              elevation: .1,
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(Repo.bagProduct[index].image),
                        // fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Text(
                        Repo.bagProduct[index].title,
                        style: AppTextStyle.inter16BlackW700,
                      ),
                      Text(
                        "\$${Repo.bagProduct[index].price}",
                        style: AppTextStyle.inter16BlackW700.copyWith(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    alignment: AlignmentDirectional.centerEnd,
                    width: 130,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconSubItemWidget(productModel: Repo.bagProduct[index]),
                        SizedBox(width: 10),
                        SizedBox(
                          width: 40,
                          child: Center(
                            child: Text(
                              "${Repo.bagProduct[index].count ?? 0}",
                              style: AppTextStyle.inter16BlackW700,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        IconAddItemWidget(productModel: Repo.bagProduct[index]),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
    );
  }
}
