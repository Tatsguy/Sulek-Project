import '../models/rutinasmock_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sulek_fit/core/app_export.dart';

// ignore: must_be_immutable
class RutinasmockItemWidget extends StatelessWidget {
  RutinasmockItemWidget(
    this.rutinasmockItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RutinasmockItemModel rutinasmockItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 33.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.gradientPrimaryToGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              rutinasmockItemModelObj.miRutina!,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 9.v),
          SizedBox(
            width: 98.h,
            child: Divider(
              color: theme.colorScheme.onPrimary,
              indent: 2.h,
            ),
          ),
          SizedBox(height: 29.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              rutinasmockItemModelObj.dasCounter!,
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 45.v),
          CustomImageView(
            imagePath: ImageConstant.img3dicons,
            height: 159.v,
            width: 210.h,
          ),
          SizedBox(height: 38.v),
        ],
      ),
    );
  }
}
