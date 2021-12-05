import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'assets.dart';

vGap({double height = 10.0}) => SizedBox(height: height);
hGap({double width = 10.0}) => SizedBox(width: width);

polygonTimeLine() => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 45),
  child:   Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          svgAsset(Assets.timelinePolygon),
          Expanded(
            child: Container(
              height: 1.0,
              color: Colors.grey,
            ),
          ),
          svgAsset(
            Assets.timelinePolygon,
            color: Colors.grey,
          ),
          Expanded(
            child: Container(
              height: 1.0,
              color: Colors.grey,
            ),
          ),
          svgAsset(
            Assets.timelinePolygon,
            color: Colors.grey,
          ),
        ],
      ),
);

Widget svgAsset(String image, {double height = 16, double width = 16, Color? color}) =>
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
