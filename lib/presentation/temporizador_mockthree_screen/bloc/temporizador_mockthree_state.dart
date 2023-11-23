// ignore_for_file: must_be_immutable

part of 'temporizador_mockthree_bloc.dart';

/// Represents the state of TemporizadorMockthree in the application.
class TemporizadorMockthreeState extends Equatable {
  TemporizadorMockthreeState({this.temporizadorMockthreeModelObj});

  TemporizadorMockthreeModel? temporizadorMockthreeModelObj;

  @override
  List<Object?> get props => [
        temporizadorMockthreeModelObj,
      ];
  TemporizadorMockthreeState copyWith(
      {TemporizadorMockthreeModel? temporizadorMockthreeModelObj}) {
    return TemporizadorMockthreeState(
      temporizadorMockthreeModelObj:
          temporizadorMockthreeModelObj ?? this.temporizadorMockthreeModelObj,
    );
  }
}
