// ignore_for_file: must_be_immutable

part of 'intro_mock_bloc.dart';

/// Represents the state of IntroMock in the application.
class IntroMockState extends Equatable {
  IntroMockState({this.introMockModelObj});

  IntroMockModel? introMockModelObj;

  @override
  List<Object?> get props => [
        introMockModelObj,
      ];
  IntroMockState copyWith({IntroMockModel? introMockModelObj}) {
    return IntroMockState(
      introMockModelObj: introMockModelObj ?? this.introMockModelObj,
    );
  }
}
