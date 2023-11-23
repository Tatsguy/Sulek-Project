import 'bloc/intro_mock_bloc.dart';
import 'models/intro_mock_model.dart';
import 'package:flutter/material.dart';
import 'package:sulek_fit/core/app_export.dart';
import 'package:sulek_fit/widgets/custom_elevated_button.dart';

class IntroMockScreen extends StatelessWidget {
  const IntroMockScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<IntroMockBloc>(
        create: (context) =>
            IntroMockBloc(IntroMockState(introMockModelObj: IntroMockModel()))
              ..add(IntroMockInitialEvent()),
        child: IntroMockScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<IntroMockBloc, IntroMockState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray50,
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup44),
                          fit: BoxFit.cover)),
                  child: Container(
                      height: 729.v,
                      width: double.maxFinite,
                      padding: EdgeInsets.only(top: 63.v, right: 105.h),
                      child: Stack(alignment: Alignment.topRight, children: [
                        Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                height: 81.v,
                                width: 79.h,
                                margin: EdgeInsets.only(top: 28.v, right: 30.h),
                                decoration:
                                    BoxDecoration(color: appTheme.blueGray50))),
                        CustomImageView(
                            imagePath: ImageConstant.imgMaskGroup,
                            height: 132.v,
                            width: 135.h,
                            alignment: Alignment.topRight)
                      ]))),
              bottomNavigationBar: _buildMueveteConNosotrosButton(context)));
    });
  }

  /// Section Widget
  Widget _buildMueveteConNosotrosButton(BuildContext context) {
    return CustomElevatedButton(
        width: 221.h,
        text: "msg_mu_vete_con_nosotros".tr,
        margin: EdgeInsets.only(left: 70.h, right: 69.h, bottom: 31.v),
        onPressed: () {
          onTapMueveteConNosotrosButton(context);
        });
  }

  /// Navigates to the ingresarMockScreen when the action is triggered.
  onTapMueveteConNosotrosButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.ingresarMockScreen,
    );
  }
}
