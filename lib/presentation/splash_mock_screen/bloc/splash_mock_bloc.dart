import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sulek_fit/presentation/splash_mock_screen/models/splash_mock_model.dart';
part 'splash_mock_event.dart';
part 'splash_mock_state.dart';

/// A bloc that manages the state of a SplashMock according to the event that is dispatched to it.
class SplashMockBloc extends Bloc<SplashMockEvent, SplashMockState> {
  SplashMockBloc(SplashMockState initialState) : super(initialState) {
    on<SplashMockInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplashMockInitialEvent event,
    Emitter<SplashMockState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.introMockScreen,
      );
    });
  }
}
