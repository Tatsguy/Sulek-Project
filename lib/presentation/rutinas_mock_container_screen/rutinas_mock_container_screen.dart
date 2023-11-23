import 'bloc/rutinas_mock_container_bloc.dart';
import 'models/rutinas_mock_container_model.dart';
import 'package:flutter/material.dart';
import 'package:sulek_fit/core/app_export.dart';
import 'package:sulek_fit/presentation/rutinas_mock_page/rutinas_mock_page.dart';
import 'package:sulek_fit/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class RutinasMockContainerScreen extends StatelessWidget {
  RutinasMockContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<RutinasMockContainerBloc>(
        create: (context) => RutinasMockContainerBloc(RutinasMockContainerState(
            rutinasMockContainerModelObj: RutinasMockContainerModel()))
          ..add(RutinasMockContainerInitialEvent()),
        child: RutinasMockContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<RutinasMockContainerBloc, RutinasMockContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.rutinasMockPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
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
}
