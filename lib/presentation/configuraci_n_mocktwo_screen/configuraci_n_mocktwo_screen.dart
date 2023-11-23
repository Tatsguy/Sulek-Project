import 'bloc/configuraci_n_mocktwo_bloc.dart';
import 'models/configuraci_n_mocktwo_model.dart';
import 'package:flutter/material.dart';
import 'package:sulek_fit/core/app_export.dart';
import 'package:sulek_fit/presentation/rutinas_mock_page/rutinas_mock_page.dart';
import 'package:sulek_fit/widgets/custom_bottom_bar.dart';
import 'package:sulek_fit/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class ConfiguraciNMocktwoScreen extends StatelessWidget {
  ConfiguraciNMocktwoScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ConfiguraciNMocktwoBloc>(
        create: (context) => ConfiguraciNMocktwoBloc(ConfiguraciNMocktwoState(
            configuraciNMocktwoModelObj: ConfiguraciNMocktwoModel()))
          ..add(ConfiguraciNMocktwoInitialEvent()),
        child: ConfiguraciNMocktwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 38.h, vertical: 18.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: 53.v,
                              width: 55.h,
                              child:
                                  Stack(alignment: Alignment.center, children: [
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
                      SizedBox(height: 41.v),
                      Text("lbl_configuraci_n".tr,
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 61.v),
                      Container(
                          height: 439.v,
                          width: 243.h,
                          margin: EdgeInsets.only(left: 4.h),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 21.h, vertical: 63.v),
                                    decoration: AppDecoration.outlineBlueGray
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(height: 36.v),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 1.h),
                                                  child: Text("lbl_kkkanye".tr,
                                                      style: CustomTextStyles
                                                          .titleSmallBlack900))),
                                          SizedBox(height: 8.v),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: SizedBox(
                                                  width: 97.h,
                                                  child: Divider(
                                                      color: appTheme.black900,
                                                      indent: 1.h))),
                                          SizedBox(height: 37.v),
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 1.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                        width: 78.h,
                                                        child: Text(
                                                            "msg_mostrar_foto_de"
                                                                .tr,
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: theme
                                                                .textTheme
                                                                .labelMedium)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgAltOff,
                                                        height: 19.v,
                                                        width: 49.h,
                                                        margin: EdgeInsets.only(
                                                            left: 39.h,
                                                            bottom: 11.v))
                                                  ])),
                                          SizedBox(height: 16.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 1.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 4.v),
                                                        child: Text(
                                                            "msg_mostrar_historial"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .labelMedium)),
                                                    BlocSelector<
                                                            ConfiguraciNMocktwoBloc,
                                                            ConfiguraciNMocktwoState,
                                                            bool?>(
                                                        selector: (state) => state
                                                            .isSelectedSwitch,
                                                        builder: (context,
                                                            isSelectedSwitch) {
                                                          return CustomSwitch(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          34.h),
                                                              value:
                                                                  isSelectedSwitch,
                                                              onChange:
                                                                  (value) {
                                                                context
                                                                    .read<
                                                                        ConfiguraciNMocktwoBloc>()
                                                                    .add(ChangeSwitchEvent(
                                                                        value:
                                                                            value));
                                                              });
                                                        })
                                                  ])),
                                          SizedBox(height: 28.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 1.h),
                                              child: _buildTwentySeven(context,
                                                  colorSecundario:
                                                      "lbl_tema_secundario"
                                                          .tr)),
                                          SizedBox(height: 28.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 1.h),
                                              child: _buildTwentySeven(context,
                                                  colorSecundario:
                                                      "msg_color_secundario"
                                                          .tr))
                                        ]))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                    height: 136.v,
                                    width: 204.h,
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgMaskGroup136x204,
                                              height: 136.v,
                                              width: 204.h,
                                              alignment: Alignment.center),
                                          CustomImageView(
                                              imagePath: ImageConstant.imgHuman,
                                              height: 56.adaptSize,
                                              width: 56.adaptSize,
                                              alignment: Alignment.topLeft,
                                              margin: EdgeInsets.only(
                                                  left: 30.h, top: 37.v))
                                        ])))
                          ])),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildTwentySeven(
    BuildContext context, {
    required String colorSecundario,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 4.v),
          child: Text(colorSecundario,
              style: theme.textTheme.labelMedium!
                  .copyWith(color: appTheme.gray700))),
      CustomImageView(
          imagePath: ImageConstant.imgAltOff,
          height: 19.v,
          width: 49.h,
          margin: EdgeInsets.only(left: 34.h))
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
