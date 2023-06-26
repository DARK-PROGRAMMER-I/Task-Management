import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_sample_app/commons/common_libs.dart';
import 'package:task_sample_app/features/task_preview/widgets/PreviewTile.dart';
import 'package:task_sample_app/utils/constants/app_constants.dart';
import 'package:task_sample_app/utils/constants/assets_manager.dart';
import 'package:task_sample_app/utils/constants/font_manager.dart';
import 'package:task_sample_app/utils/thems/my_colors.dart';
import 'package:task_sample_app/utils/thems/styles_manager.dart';

class TaskPreviewScreen extends StatelessWidget {
  const TaskPreviewScreen({Key? key}) : super(key: key);

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
                    Text(
                      'Task Preview',
                      style: getSemiBoldStyle(
                        fontSize:MyFonts.size30,
                        color: MyColors.themeColor,
                      ),
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(20.r),
                        onTap: () {},
                        child: Image.asset(
                          AppAssets.deleteIcon,
                          width: 46.w,
                          height: 46.w,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              const PreviewTile(title: 'Task', subtitle: 'Start working out'),
              const PreviewTile(title: 'Type', subtitle: 'Personal Project'),
              const PreviewTile(title: 'Priorty', subtitle: 'Nice to have'),
              const PreviewTile(title: 'TimeFrame', subtitle: 'Week'),
              const PreviewTile(
                  title: 'Description ',
                  subtitle:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod')
            ],
          ),
        ),
      ),
    );
  }
}
