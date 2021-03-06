import 'package:werve/export.dart';

vGap({double height = 10.0}) => SizedBox(height: height);
hGap({double width = 10.0}) => SizedBox(width: width);

polygonTimeLine(int step) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          svgAsset(Assets.timelinePolygon, color: step==1?null:Colors.grey),
          Expanded(
            child: Container(
              height: 1.0,
              color: Colors.grey,
            ),
          ),
          svgAsset(
            Assets.timelinePolygon,
            color: step==2?null:Colors.grey,
          ),
          Expanded(
            child: Container(
              height: 1.0,
              color: Colors.grey,
            ),
          ),
          svgAsset(
            Assets.timelinePolygon,
            color: step==3?null:Colors.grey,
          ),
        ],
      ),
    );

Widget svgAsset(String image,
        {double height = 16, double width = 16, Color? color}) =>
    SvgPicture.asset(
      image,
      height: height,
      width: width,
      color: color,
    );

Widget imageAsset(String image, {double height = 16, double width = 16}) =>
    Image.asset(
      image,
      height: height,
      width: width,
    );
