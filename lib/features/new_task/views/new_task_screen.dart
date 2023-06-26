import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_sample_app/commons/common_libs.dart';
import 'package:task_sample_app/features/new_task/widgets/custom_button.dart';
import 'package:task_sample_app/features/new_task/widgets/DropDownWidget.dart';
import 'package:task_sample_app/features/new_task/widgets/custom_textfield.dart';
import 'package:task_sample_app/features/new_task/widgets/expand_tile_widget.dart';
import 'package:task_sample_app/routes/route_manager.dart';
import 'package:task_sample_app/utils/constants/app_constants.dart';
import 'package:task_sample_app/utils/constants/assets_manager.dart';
import 'package:task_sample_app/utils/constants/font_manager.dart';
import 'package:task_sample_app/utils/thems/my_colors.dart';
import 'package:task_sample_app/utils/thems/styles_manager.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  final TextEditingController _nameCtr = TextEditingController();
  final TextEditingController _descCtr = TextEditingController();
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  var passObscure = true;
  String? type;
  String? priority;
  String? timeFrame;
  List<String> typeItems = ['Work', 'Personal project', 'Self'];
  List<String> priorityItems = ['Needs done', 'Nice to have', 'Nice idea'];
  List<String> timeFrameItems = [
    'Timeframe',
    'None',
    'Today',
    '3 Days',
    'Week',
    'Fortnight',
    'Month',
    '90 Days',
    'Year'
  ];

  @override
  void dispose() {
    _nameCtr.dispose();
    _descCtr.dispose();
    super.dispose();
  }

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
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(AppConstants.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0.h),
                child: Text(
                  'New Task',
                  style: getSemiBoldStyle(
                    fontSize: MyFonts.size30,
                    color: MyColors.themeColor,
                  ),
                ),
              ),
              CustomTextField(
                controller: _nameCtr,
                onChanged: (val) {},
                onFieldSubmitted: (val) {},
                labelText: 'Task',
                hintText: 'Text',
              ),
              ExpandDropDownWidget(
                hintText: '',
                value: type,
                labelText: 'Type',
                valueItems: typeItems,
                onChanged: (String? newValue) {
                  setState(() {
                    type = newValue!;
                  });
                },
              ),
              ExpandDropDownWidget(
                hintText: '',
                labelText: 'Priority',
                value: priority,
                valueItems: priorityItems,
                onChanged: (String? newValue) {
                  setState(() {
                    priority = newValue!;
                  });
                },
              ),
              ExpandDropDownWidget(
                hintText: '',
                labelText: 'Timeframe',
                value: timeFrame,
                valueItems: timeFrameItems,
                onChanged: (String? newValue) {
                  setState(() {
                    timeFrame = newValue!;
                  });
                },
              ),
              CustomTextField(
                controller: _descCtr,
                onChanged: (val) {},
                onFieldSubmitted: (val) {},
                labelText: 'Description',
                hintText: '',
                maxLines: 5,
              ),
              SizedBox(
                height: 40.h,
              ),
              CustomButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, AppRoutes.sampleAppScreen, (route) => false);
                },
                buttonText: 'Submit',
                borderRadius: 10.r,
                fontSize: MyFonts.size18,
                buttonHeight: 56.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
