import 'package:task_sample_app/commons/common_libs.dart';
import 'package:task_sample_app/utils/constants/assets_manager.dart';
import 'package:task_sample_app/utils/constants/font_manager.dart';

class MainTaskWidget extends StatelessWidget {
  const MainTaskWidget({
    super.key,
    required this.noTasks,
    required this.name,
    required this.iconPath,
    required this.onTap,
  });

  final int noTasks;
  final String iconPath;
  final String name;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 96.h,
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 30.w),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: MyColors.black.withOpacity(0.05),
                  blurRadius: 20.spMax,
                  offset: Offset(0, 4.h)),
            ],
            gradient: const LinearGradient(
              colors: [
                MyColors.white,
                MyColors.gradientTaskColor,
              ],
            ),
            borderRadius: BorderRadius.circular(16.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  iconPath,
                  width: 28.h,
                  height: 28.h,
                ),
                SizedBox(
                  width: 25.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: getRegularStyle(
                          color: MyColors.grayScale3Color,
                          fontSize:  MyFonts.size22),
                    ),
                    Text(
                      '$noTasks Tasks',
                      style: getRegularStyle(
                          color: MyColors.grayScale5Color,
                          fontSize: MyFonts.size14),
                    ),
                  ],
                ),

              ],
            ),
            Image.asset(
              AppAssets.arrowForwardIcon,
              width: 28.h,
              height: 28.h,
            ),
          ],
        ),
      ),
    );
  }
}
