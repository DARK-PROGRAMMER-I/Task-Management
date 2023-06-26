
import 'package:task_sample_app/commons/common_libs.dart';
import 'package:task_sample_app/utils/constants/font_manager.dart';

class PreviewTile extends StatelessWidget {
  const PreviewTile({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: getRegularStyle(
              fontSize: MyFonts.size18,
              color: MyColors.grayScale4Color,
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            subtitle,
            style: getRegularStyle(
              fontSize: MyFonts.size22,
              color: MyColors.grayScale2Color,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Divider(
            color: MyColors.grayScale7Color,
            thickness: 2.h,
          ),
        ],
      ),
    );
  }
}
