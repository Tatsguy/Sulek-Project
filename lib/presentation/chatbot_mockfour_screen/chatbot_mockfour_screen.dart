import 'bloc/chatbot_mockfour_bloc.dart';
import 'models/chatbot_mockfour_model.dart';
import 'package:flutter/material.dart';
import 'package:sulek_fit/core/app_export.dart';
import 'package:sulek_fit/widgets/custom_text_form_field.dart';

class ChatbotMockfourScreen extends StatelessWidget {
  const ChatbotMockfourScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChatbotMockfourBloc>(
        create: (context) => ChatbotMockfourBloc(ChatbotMockfourState(
            chatbotMockfourModelObj: ChatbotMockfourModel()))
          ..add(ChatbotMockfourInitialEvent()),
        child: ChatbotMockfourScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 18.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(left: 42.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                                      decoration: BoxDecoration(
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
                                    SizedBox(height: 37.v),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            margin: EdgeInsets.only(
                                                left: 52.h, right: 42.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16.h,
                                                vertical: 7.v),
                                            decoration: AppDecoration
                                                .fillBluegray5001
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL20),
                                            child: SizedBox(
                                                width: 191.h,
                                                child: Text(
                                                    "msg_dame_una_rutina".tr,
                                                    maxLines: 3,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .bodySmallOpenSansGray700)))),
                                    SizedBox(height: 37.v),
                                    Container(
                                        margin: EdgeInsets.only(right: 94.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 13.h, vertical: 4.v),
                                        decoration: AppDecoration
                                            .fillBluegray5001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderBL20),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(height: 2.v),
                                              SizedBox(
                                                  width: 194.h,
                                                  child: Text(
                                                      "msg_claro_aqu_tienes".tr,
                                                      maxLines: 4,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: CustomTextStyles
                                                          .bodySmallOpenSansGray700))
                                            ])),
                                    SizedBox(height: 299.v),
                                    _buildNineteen(context)
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildNineteen(BuildContext context) {
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
                        imagePath: ImageConstant.imgRectangle121,
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
          Padding(
              padding: EdgeInsets.only(bottom: 88.v),
              child: BlocSelector<ChatbotMockfourBloc, ChatbotMockfourState,
                      TextEditingController?>(
                  selector: (state) => state.strokeHardController,
                  builder: (context, strokeHardController) {
                    return CustomTextFormField(
                        width: 276.h,
                        controller: strokeHardController,
                        hintText: "msg_manda_datos_para".tr,
                        textInputAction: TextInputAction.done,
                        alignment: Alignment.bottomLeft,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 13.h, vertical: 10.v),
                        borderDecoration:
                            TextFormFieldStyleHelper.fillOnPrimary,
                        fillColor: theme.colorScheme.onPrimary);
                  }))
        ]));
  }

  /// Navigates to the rutinasMockContainerScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.rutinasMockContainerScreen,
    );
  }
}
