import 'bloc/temporizador_mockthree_bloc.dart';
import 'models/temporizador_mockthree_model.dart';
import 'package:flutter/material.dart';
import 'package:sulek_fit/core/app_export.dart';
import 'package:sulek_fit/presentation/rutinas_mock_page/rutinas_mock_page.dart';
import 'package:sulek_fit/widgets/custom_bottom_bar.dart';
import 'package:sulek_fit/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class TemporizadorMockthreeScreen extends StatelessWidget {
  TemporizadorMockthreeScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<TemporizadorMockthreeBloc>(
        create: (context) => TemporizadorMockthreeBloc(
            TemporizadorMockthreeState(
                temporizadorMockthreeModelObj: TemporizadorMockthreeModel()))
          ..add(TemporizadorMockthreeInitialEvent()),
        child: TemporizadorMockthreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<TemporizadorMockthreeBloc, TemporizadorMockthreeState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 38.h, vertical: 18.v),
                  child: Column(children: [
                    SizedBox(
                        height: 53.v,
                        width: 55.h,
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                  height: 33.v,
                                  width: 32.h,
                                  margin:
                                      EdgeInsets.only(left: 10.h, bottom: 8.v),
                                  decoration:
                                      BoxDecoration(color: appTheme.black900))),
                          CustomImageView(
                              imagePath: ImageConstant.imgMaskGroup,
                              height: 53.v,
                              width: 55.h,
                              alignment: Alignment.center,
                              onTap: () {
                                onTapImgImage(context);
                              })
                        ])),
                    SizedBox(height: 41.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("lbl_temporizador".tr,
                            style: theme.textTheme.headlineSmall)),
                    SizedBox(height: 61.v),
                    CustomImageView(
                        imagePath: ImageConstant.img3dicons244x244,
                        height: 244.adaptSize,
                        width: 244.adaptSize),
                    SizedBox(height: 11.v),
                    Text("lbl_00_59_29".tr,
                        style: CustomTextStyles.headlineSmallInter),
                    SizedBox(height: 41.v),
                    CustomIconButton(
                        height: 63.adaptSize,
                        width: 63.adaptSize,
                        padding: EdgeInsets.all(19.h),
                        child:
                            CustomImageView(imagePath: ImageConstant.imgPlay)),
                    SizedBox(height: 24.v),
                    CustomIconButton(
                        height: 43.adaptSize,
                        width: 43.adaptSize,
                        padding: EdgeInsets.all(9.h),
                        decoration: IconButtonStyleHelper.outlineBlueGrayF,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgGroup25)),
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
