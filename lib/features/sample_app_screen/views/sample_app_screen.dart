import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_sample_app/commons/common_libs.dart';
import 'package:task_sample_app/features/sample_app_screen/widgets/main_tasks_widget.dart';
import 'package:task_sample_app/models/tasks/task_model.dart';
import 'package:task_sample_app/routes/route_manager.dart';
import 'package:task_sample_app/utils/constants/app_constants.dart';
import 'package:task_sample_app/utils/constants/font_manager.dart';
import 'package:task_sample_app/utils/thems/my_colors.dart';
import 'package:task_sample_app/utils/thems/styles_manager.dart';

class SampleAppScreen extends StatelessWidget {
  const SampleAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grayScale9Color,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(AppConstants.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70.h,
              ),
              Text(
                'Sample App',
                style: getSemiBoldStyle(
                  fontSize: MyFonts.size32,
                  color: MyColors.themeColor,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: tasksList.length,
                itemBuilder: (BuildContext context, int index) {
                  final TaskModel task = tasksList[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 20.h),
                    child: MainTaskWidget(
                        noTasks: int.parse(task.noTasks),
                        name: 'Task',
                        iconPath: task.iconPath,
                        onTap: () {
                          Navigator.pushNamed(
                              context, AppRoutes.singleTaskScreen);
                        }),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
