import 'bloc/splash_mock_bloc.dart';
import 'models/splash_mock_model.dart';
import 'package:flutter/material.dart';
import 'package:sulek_fit/core/app_export.dart';

class SplashMockScreen extends StatelessWidget {
  const SplashMockScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashMockBloc>(
        create: (context) => SplashMockBloc(
            SplashMockState(splashMockModelObj: SplashMockModel()))
          ..add(SplashMockInitialEvent()),
        child: SplashMockScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SplashMockBloc, SplashMockState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.primary,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 1.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage1,
                            height: 211.v,
                            width: 190.h)
                      ]))));
    });
  }
}
