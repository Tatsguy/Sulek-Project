// ignore_for_file: must_be_immutable

part of 'splash_mock_bloc.dart';

/// Represents the state of SplashMock in the application.
class SplashMockState extends Equatable {
  SplashMockState({this.splashMockModelObj});

  SplashMockModel? splashMockModelObj;

  @override
  List<Object?> get props => [
        splashMockModelObj,
      ];
  SplashMockState copyWith({SplashMockModel? splashMockModelObj}) {
    return SplashMockState(
      splashMockModelObj: splashMockModelObj ?? this.splashMockModelObj,
    );
  }
}
