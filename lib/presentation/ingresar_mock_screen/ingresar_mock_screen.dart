import 'bloc/ingresar_mock_bloc.dart';
import 'models/ingresar_mock_model.dart';
import 'package:flutter/material.dart';
import 'package:sulek_fit/core/app_export.dart';
import 'package:sulek_fit/widgets/custom_outlined_button.dart';
import 'package:sulek_fit/widgets/custom_text_form_field.dart';

class IngresarMockScreen extends StatelessWidget {
  const IngresarMockScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<IngresarMockBloc>(
        create: (context) => IngresarMockBloc(
            IngresarMockState(ingresarMockModelObj: IngresarMockModel()))
          ..add(IngresarMockInitialEvent()),
        child: IngresarMockScreen());
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
                  SizedBox(height: 49.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(left: 38.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage176x74,
                                        height: 76.v,
                                        width: 74.h),
                                    SizedBox(height: 55.v),
                                    Container(
                                        width: 255.h,
                                        margin: EdgeInsets.only(right: 66.h),
                                        child: Text("msg_ingresa_tu_correo".tr,
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .headlineSmallRegular)),
                                    SizedBox(height: 32.v),
                                    Padding(
                                        padding: EdgeInsets.only(right: 37.h),
                                        child: BlocSelector<
                                                IngresarMockBloc,
                                                IngresarMockState,
                                                TextEditingController?>(
                                            selector: (state) => state
                                                .correoelectrnicoController,
                                            builder: (context,
                                                correoelectrnicoController) {
                                              return CustomTextFormField(
                                                  controller:
                                                      correoelectrnicoController,
                                                  hintText:
                                                      "msg_correo_electr_nico"
                                                          .tr);
                                            })),
                                    SizedBox(height: 34.v),
                                    Padding(
                                        padding: EdgeInsets.only(right: 37.h),
                                        child: BlocSelector<
                                                IngresarMockBloc,
                                                IngresarMockState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.strokeHardController,
                                            builder: (context,
                                                strokeHardController) {
                                              return CustomTextFormField(
                                                  controller:
                                                      strokeHardController,
                                                  hintText: "lbl_contrase_a".tr,
                                                  textInputAction:
                                                      TextInputAction.done);
                                            })),
                                    SizedBox(height: 68.v),
                                    CustomOutlinedButton(
                                        width: 180.h,
                                        text: "lbl_continuar".tr,
                                        onPressed: () {
                                          onTapContinuar(context);
                                        },
                                        alignment: Alignment.centerRight),
                                    SizedBox(height: 21.v),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                            height: 277.v,
                                            width: 180.h,
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle12,
                                                      height: 171.v,
                                                      width: 126.h,
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      margin: EdgeInsets.only(
                                                          bottom: 45.v)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgMaskGroup277x180,
                                                      height: 277.v,
                                                      width: 180.h,
                                                      alignment:
                                                          Alignment.center)
                                                ])))
                                  ]))))
                ]))));
  }

  /// Navigates to the rutinasMockContainerScreen when the action is triggered.
  onTapContinuar(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.rutinasMockContainerScreen,
    );
  }
}
