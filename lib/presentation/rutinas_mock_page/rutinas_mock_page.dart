import '../rutinas_mock_page/widgets/rutinasmock_item_widget.dart';
import 'bloc/rutinas_mock_bloc.dart';
import 'models/rutinas_mock_model.dart';
import 'models/rutinasmock_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sulek_fit/core/app_export.dart';

// ignore_for_file: must_be_immutable
class RutinasMockPage extends StatelessWidget {
  const RutinasMockPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RutinasMockBloc>(
      create: (context) => RutinasMockBloc(RutinasMockState(
        rutinasMockModelObj: RutinasMockModel(),
      ))
        ..add(RutinasMockInitialEvent()),
      child: RutinasMockPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlueGray,
          child: Column(
            children: [
              SizedBox(height: 18.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(left: 38.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 53.v,
                          width: 55.h,
                          margin: EdgeInsets.only(left: 114.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  height: 33.v,
                                  width: 32.h,
                                  margin: EdgeInsets.only(
                                    left: 10.h,
                                    bottom: 8.v,
                                  ),
                                  decoration: BoxDecoration(
                                    color: appTheme.black900,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgMaskGroup,
                                height: 53.v,
                                width: 55.h,
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 38.v),
                        Text(
                          "lbl_rutinas".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 64.v),
                        _buildRutinasMock(context),
                        SizedBox(height: 39.v),
                        CustomImageView(
                          imagePath: ImageConstant.img3dicons72x54,
                          height: 72.v,
                          width: 54.h,
                          alignment: Alignment.centerRight,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRutinasMock(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 42.h,
      ),
      child: BlocSelector<RutinasMockBloc, RutinasMockState, RutinasMockModel?>(
        selector: (state) => state.rutinasMockModelObj,
        builder: (context, rutinasMockModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 71.v,
              );
            },
            itemCount: rutinasMockModelObj?.rutinasmockItemList.length ?? 0,
            itemBuilder: (context, index) {
              RutinasmockItemModel model =
                  rutinasMockModelObj?.rutinasmockItemList[index] ??
                      RutinasmockItemModel();
              return RutinasmockItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
