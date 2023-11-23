import 'bloc/chatbot_mocktwo_bloc.dart';
import 'models/chatbot_mocktwo_model.dart';
import 'package:flutter/material.dart';
import 'package:sulek_fit/core/app_export.dart';

class ChatbotMocktwoScreen extends StatelessWidget {
  const ChatbotMocktwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChatbotMocktwoBloc>(
        create: (context) => ChatbotMocktwoBloc(
            ChatbotMocktwoState(chatbotMocktwoModelObj: ChatbotMocktwoModel()))
          ..add(ChatbotMocktwoInitialEvent()),
        child: ChatbotMocktwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ChatbotMocktwoBloc, ChatbotMocktwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(height: 18.v),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Padding(
                                padding: EdgeInsets.only(left: 42.h),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          height: 53.v,
                                          width: 55.h,
                                          margin: EdgeInsets.only(left: 111.h),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Container(
                                                        height: 33.v,
                                                        width: 32.h,
                                                        margin: EdgeInsets.only(
                                                            left: 10.h,
                                                            bottom: 8.v),
                                                        decoration:
                                                            BoxDecoration(
                                                                color: appTheme
                                                                    .black900))),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgMaskGroup,
                                                    height: 53.v,
                                                    width: 55.h,
                                                    alignment: Alignment.center,
                                                    onTap: () {
                                                      onTapImgImage(context);
                                                    })
                                              ])),
                                      SizedBox(height: 518.v),
                                      _buildChatbotMockTwo(context)
                                    ]))))
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildChatbotMockTwo(BuildContext context) {
    return SizedBox(
        height: 277.v,
        width: 318.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                  height: 277.v,
                  width: 180.h,
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle12171x126,
                        height: 171.v,
                        width: 126.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(bottom: 45.v)),
                    CustomImageView(
                        imagePath: ImageConstant.imgMaskGroup277x180,
                        height: 277.v,
                        width: 180.h,
                        alignment: Alignment.center)
                  ]))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  margin:
                      EdgeInsets.only(top: 108.v, right: 42.h, bottom: 88.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 13.h, vertical: 7.v),
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Container(
                                width: 206.h,
                                margin: EdgeInsets.only(top: 3.v),
                                child: Text("msg_dame_una_rutina".tr,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        CustomTextStyles.bodyMediumGray700))),
                        CustomImageView(
                            imagePath: ImageConstant.imgIconIoniconsCheckmarked,
                            height: 21.adaptSize,
                            width: 21.adaptSize,
                            margin: EdgeInsets.only(
                                left: 20.h, top: 41.v, bottom: 3.v))
                      ])))
        ]));
  }

  /// Navigates to the rutinasMockContainerScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.rutinasMockContainerScreen,
    );
  }
}
