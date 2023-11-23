import 'bloc/estad_sticas_mockone_bloc.dart';
import 'models/estad_sticas_mockone_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:sulek_fit/core/app_export.dart';
import 'package:sulek_fit/presentation/rutinas_mock_page/rutinas_mock_page.dart';
import 'package:sulek_fit/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class EstadSticasMockoneScreen extends StatelessWidget {
  EstadSticasMockoneScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<EstadSticasMockoneBloc>(
        create: (context) => EstadSticasMockoneBloc(EstadSticasMockoneState(
            estadSticasMockoneModelObj: EstadSticasMockoneModel()))
          ..add(EstadSticasMockoneInitialEvent()),
        child: EstadSticasMockoneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<EstadSticasMockoneBloc, EstadSticasMockoneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 38.h, vertical: 18.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 53.v,
                                width: 55.h,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                              height: 33.v,
                                              width: 32.h,
                                              margin: EdgeInsets.only(
                                                  left: 10.h, bottom: 8.v),
                                              decoration: BoxDecoration(
                                                  color: appTheme.black900))),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgMaskGroup,
                                          height: 53.v,
                                          width: 55.h,
                                          alignment: Alignment.center,
                                          onTap: () {
                                            onTapImgImage(context);
                                          })
                                    ]))),
                        SizedBox(height: 38.v),
                        Text("lbl_estad_sticas".tr,
                            style: theme.textTheme.headlineSmall),
                        SizedBox(height: 63.v),
                        Padding(
                            padding: EdgeInsets.only(right: 13.h),
                            child: Row(children: [
                              _buildLeftText(context,
                                  oneHundredValue: "lbl_100".tr,
                                  seventyFiveValue: "lbl_75".tr,
                                  fiftyValue: "lbl_50".tr,
                                  twentyFiveValue: "lbl_25".tr,
                                  zeroValue: "lbl_0".tr),
                              Container(
                                  height: 138.v,
                                  width: 241.h,
                                  margin: EdgeInsets.only(
                                      left: 7.h, top: 7.v, bottom: 7.v),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgHorizontalLines,
                                            height: 137.v,
                                            width: 236.h,
                                            alignment: Alignment.center),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgVerticalLines,
                                            height: 138.v,
                                            width: 235.h,
                                            alignment: Alignment.center),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgLineArea,
                                            height: 96.v,
                                            width: 236.h,
                                            alignment: Alignment.bottomCenter),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgPoints,
                                            height: 87.v,
                                            width: 241.h,
                                            alignment: Alignment.bottomCenter,
                                            margin:
                                                EdgeInsets.only(bottom: 11.v))
                                      ]))
                            ])),
                        SizedBox(height: 4.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 23.h, right: 2.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("lbl_lunes".tr,
                                          style: CustomTextStyles
                                              .robotoOnPrimaryContainer),
                                      Padding(
                                          padding: EdgeInsets.only(left: 18.h),
                                          child: Text("lbl_martes".tr,
                                              style: CustomTextStyles
                                                  .robotoOnPrimaryContainer)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 11.h),
                                          child: Text("lbl_mi_rcoles".tr,
                                              style: CustomTextStyles
                                                  .robotoOnPrimaryContainer)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 13.h),
                                          child: Text("lbl_jueves".tr,
                                              style: CustomTextStyles
                                                  .robotoOnPrimaryContainer)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 18.h),
                                          child: Text("lbl_viernes".tr,
                                              style: CustomTextStyles
                                                  .robotoOnPrimaryContainer)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 15.h),
                                          child: Text("lbl_s_bado".tr,
                                              style: CustomTextStyles
                                                  .robotoOnPrimaryContainer)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 13.h),
                                          child: Text("lbl_domingo".tr,
                                              style: CustomTextStyles
                                                  .robotoOnPrimaryContainer))
                                    ]))),
                        SizedBox(height: 52.v),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 15.v),
                                          child: _buildLeftText(context,
                                              oneHundredValue: "lbl_100".tr,
                                              seventyFiveValue: "lbl_75".tr,
                                              fiftyValue: "lbl_50".tr,
                                              twentyFiveValue: "lbl_25".tr,
                                              zeroValue: "lbl_0".tr)),
                                      Expanded(
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 10.h, top: 3.v),
                                              child: Column(children: [
                                                SizedBox(
                                                    height: 130.v,
                                                    width: 236.h,
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgHorizontalLines,
                                                              height: 125.v,
                                                              width: 236.h,
                                                              alignment:
                                                                  Alignment
                                                                      .center),
                                                          Align(
                                                              alignment: Alignment
                                                                  .center,
                                                              child: Container(
                                                                  height: 126.v,
                                                                  width: 235.h,
                                                                  padding: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          28.h),
                                                                  decoration: BoxDecoration(
                                                                      image: DecorationImage(
                                                                          image: fs.Svg(ImageConstant
                                                                              .imgGroup8),
                                                                          fit: BoxFit
                                                                              .cover)),
                                                                  child: CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgColumns1,
                                                                      height:
                                                                          110.v,
                                                                      width:
                                                                          177.h,
                                                                      alignment:
                                                                          Alignment.bottomCenter))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .topCenter,
                                                              child: Padding(
                                                                  padding: EdgeInsets
                                                                      .symmetric(
                                                                          horizontal: 32
                                                                              .h),
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child: Text("lbl_88".tr, style: theme.textTheme.bodySmall)),
                                                                        SizedBox(
                                                                            height:
                                                                                20.v),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.centerRight,
                                                                            child: Text("lbl_60".tr, style: theme.textTheme.bodySmall)),
                                                                        SizedBox(
                                                                            height:
                                                                                10.v),
                                                                        Text(
                                                                            "lbl_40"
                                                                                .tr,
                                                                            style:
                                                                                theme.textTheme.bodySmall)
                                                                      ])))
                                                        ])),
                                                SizedBox(height: 5.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 20.h,
                                                        right: 15.h),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          1.v),
                                                              child: Text(
                                                                  "lbl_viernes"
                                                                      .tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodySmall)),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          1.v),
                                                              child: Text(
                                                                  "lbl_s_bado"
                                                                      .tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodySmall)),
                                                          Text("lbl_domingo".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall)
                                                        ]))
                                              ])))
                                    ]))),
                        SizedBox(height: 5.v)
                      ])),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildLeftText(
    BuildContext context, {
    required String oneHundredValue,
    required String seventyFiveValue,
    required String fiftyValue,
    required String twentyFiveValue,
    required String zeroValue,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
      Text(oneHundredValue,
          style: theme.textTheme.bodySmall!
              .copyWith(color: theme.colorScheme.onPrimaryContainer)),
      SizedBox(height: 16.v),
      Text(seventyFiveValue,
          style: theme.textTheme.bodySmall!
              .copyWith(color: theme.colorScheme.onPrimaryContainer)),
      SizedBox(height: 16.v),
      Text(fiftyValue,
          style: theme.textTheme.bodySmall!
              .copyWith(color: theme.colorScheme.onPrimaryContainer)),
      SizedBox(height: 16.v),
      Text(twentyFiveValue,
          style: theme.textTheme.bodySmall!
              .copyWith(color: theme.colorScheme.onPrimaryContainer)),
      SizedBox(height: 16.v),
      Text(zeroValue,
          style: theme.textTheme.bodySmall!
              .copyWith(color: theme.colorScheme.onPrimaryContainer))
    ]);
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Group21:
        return AppRoutes.rutinasMockPage;
      case BottomBarEnum.Calendar:
        return "/";
      case BottomBarEnum.Settings:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.rutinasMockPage:
        return RutinasMockPage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the rutinasMockContainerScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.rutinasMockContainerScreen,
    );
  }
}
