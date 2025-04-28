import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/app_color.dart';
import '../../data/repo/repo.dart';
import '../control/home/home_cubit.dart';
class BagItemWidget extends StatelessWidget {
  const BagItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Container(

          decoration: BoxDecoration(
            color: AppColor.green,
            borderRadius: BorderRadius.circular(18),
          ),
          width: double.infinity,
          height: 70,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(width: 8),
            scrollDirection: Axis.horizontal,
            itemCount: Repo.bagProduct.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Text("${Repo.bagProduct[index].count}"),
                  CircleAvatar(
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
                  ),
                ],
              );
            },
          ),

        );
      },
    );
  }
}
