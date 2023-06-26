import 'package:task_sample_app/utils/constants/font_manager.dart';

import '../../../commons/common_libs.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final Function(String) onChanged;
  final Function(String) onFieldSubmitted;
  final TextInputType? inputType;
  final bool? obscure;
  final IconData? icon;
  final String? Function(String?)? validatorFn;
  final int? maxLines;
  final double? padding;
  final String labelText;

  const CustomTextField({
    Key? key,
    required this.controller,
    this.hintText,
    required this.onChanged,
    required this.onFieldSubmitted,
    this.inputType,
    this.obscure,
    this.validatorFn,
    this.icon,
    this.maxLines,
    this.padding,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: padding ?? 15.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: getRegularStyle(
              fontSize: MyFonts.size18,
              color: MyColors.grayScale2Color,
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(1.w, 1.h),
                    blurRadius: 2.r,
                    color: Colors.black.withOpacity(0.2),
                  )
                ],
                color: MyColors.white,
                borderRadius: BorderRadius.circular(10.r)),
            child: TextFormField(
              validator: validatorFn,
              obscureText: obscure ?? false,
              controller: controller,
              keyboardType: inputType,
              maxLines: maxLines ?? 1,
              style: getRegularStyle(
                fontSize: MyFonts.size16,
                color: MyColors.grayScale2Color,
              ),
              decoration: InputDecoration(
                fillColor: MyColors.white,
                filled: true,
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 10.w, vertical: maxLines != null ? 10 : 0),
                hintText: hintText ?? "",
                hintStyle: getRegularStyle(
                    color: MyColors.grayScale5Color, fontSize: MyFonts.size16),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide:
                      const BorderSide(color: MyColors.white, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide:
                      const BorderSide(color: MyColors.themeColor, width: 1.0),
                ),
                border: OutlineInputBorder(),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(color: MyColors.white, width: 1.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(color: MyColors.white, width: 1.0),
                ),
              ),
              onFieldSubmitted: onFieldSubmitted,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
