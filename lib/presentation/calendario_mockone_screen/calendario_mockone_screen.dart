import 'bloc/calendario_mockone_bloc.dart';
import 'models/calendario_mockone_model.dart';
import 'package:flutter/material.dart';
import 'package:sulek_fit/core/app_export.dart';
import 'package:sulek_fit/presentation/rutinas_mock_page/rutinas_mock_page.dart';
import 'package:sulek_fit/widgets/custom_bottom_bar.dart';
import 'package:table_calendar/table_calendar.dart';

// ignore_for_file: must_be_immutable
class CalendarioMockoneScreen extends StatelessWidget {
  CalendarioMockoneScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<CalendarioMockoneBloc>(
        create: (context) => CalendarioMockoneBloc(CalendarioMockoneState(
            calendarioMockoneModelObj: CalendarioMockoneModel()))
          ..add(CalendarioMockoneInitialEvent()),
        child: CalendarioMockoneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 38.h, vertical: 18.v),
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
                  SizedBox(height: 38.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("lbl_calendario".tr,
                          style: theme.textTheme.headlineSmall)),
                  SizedBox(height: 66.v),
                  _buildCalendarSection(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildBottomBarSection(context)));
  }

  /// Section Widget
  Widget _buildCalendarSection(BuildContext context) {
    return BlocBuilder<CalendarioMockoneBloc, CalendarioMockoneState>(
        builder: (context, state) {
      return SizedBox(
          height: 270.v,
          width: 271.h,
          child: TableCalendar(
              locale: 'en_US',
              firstDay: DateTime(DateTime.now().year - 5),
              lastDay: DateTime(DateTime.now().year + 5),
              calendarFormat: CalendarFormat.month,
              rangeSelectionMode: state.rangeSelectionMode,
              startingDayOfWeek: StartingDayOfWeek.monday,
              headerStyle:
                  HeaderStyle(formatButtonVisible: false, titleCentered: true),
              calendarStyle: CalendarStyle(
                  outsideDaysVisible: false,
                  isTodayHighlighted: true,
                  todayTextStyle: TextStyle(
                      color: appTheme.gray400,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w200),
                  todayDecoration: BoxDecoration(
                      color: theme.colorScheme.onPrimaryContainer,
                      borderRadius: BorderRadius.circular(4.h))),
              daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: TextStyle(
                      color: appTheme.gray400,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400)),
              headerVisible: false,
              rowHeight: 24.adaptSize,
              focusedDay: state.focusedDay ?? DateTime.now(),
              rangeStartDay: state.rangeStart,
              rangeEndDay: state.rangeEnd,
              onDaySelected: (selectedDay, focusedDay) {
                if (!isSameDay(state.selectedDay, selectedDay)) {
                  state.focusedDay = focusedDay;
                  state.selectedDay = selectedDay;
                  state.rangeSelectionMode = RangeSelectionMode.toggledOn;
                }
              },
              onRangeSelected: (start, end, focusedDay) {
                state.focusedDay = focusedDay;
                state.rangeEnd = end;
                state.rangeStart = start;
                state.rangeSelectionMode = RangeSelectionMode.toggledOn;
              },
              onPageChanged: (focusedDay) {
                state.focusedDay = focusedDay;
              }));
    });
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
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
