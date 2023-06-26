import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_sample_app/commons/common_libs.dart';
import 'package:task_sample_app/features/single_task_screen/widgets/sub_tasks_widget.dart';
import 'package:task_sample_app/routes/route_manager.dart';
import 'package:task_sample_app/utils/constants/app_constants.dart';
import 'package:task_sample_app/utils/constants/assets_manager.dart';
import 'package:task_sample_app/utils/constants/font_manager.dart';
import 'package:task_sample_app/utils/thems/my_colors.dart';
import 'package:task_sample_app/utils/thems/styles_manager.dart';

class SingleTaskScreen extends StatelessWidget {
  const SingleTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grayScale9Color,
      appBar: AppBar(
        backgroundColor: MyColors.grayScale9Color,
        leading: IconButton(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            AppAssets.arrowBackIcon,
            width: 36.w,
            height: 36.w,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(AppConstants.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tasks',
                          style: getSemiBoldStyle(
                            fontSize:MyFonts.size30,
                            color: MyColors.themeColor,
                          ),
                        ),
                        Text(
                          '6 Tasks',
                          style: getRegularStyle(
                            fontSize: MyFonts.size18,
                            color: MyColors.grayScale5Color,
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(30.r),
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.newTaskScreen);
                        },
                        child: Image.asset(
                          AppAssets.addIcon,
                          width: 46.w,
                          height: 46.w,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              SubTaskWidget(
                  dateTime: 'Today',
                  title:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eu nulla in mi blandit sollicitudin in ut lacus.',
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.taskPreviewScreen);
                  }),
              SubTaskWidget(
                  dateTime: '3 Days',
                  title:
                      'Consectetur adipiscing elit. Nunc eu nulla in mi blandit sollicitudin in ut lacus.',
                  onTap: () {}),
              SubTaskWidget(
                  dateTime: 'Week',
                  title:
                      'Nunc eu nulla in mi blandit sollicitudin in ut lacus.',
                  onTap: () {}),
              SubTaskWidget(
                  dateTime: 'Fortnight',
                  title:
                      'Maecenas posuere nunc facilisis, cursus lectus eget, interdum nisl.in mi blandit sollicitudin in ut lacus.',
                  onTap: () {}),
              SubTaskWidget(
                  dateTime: 'Month',
                  title:
                      'Quisque sit amet porttitor massa. Maecenas nisi tellus, dapibus vitae pellentesque at sollicitudin in ut lacus.',
                  onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
