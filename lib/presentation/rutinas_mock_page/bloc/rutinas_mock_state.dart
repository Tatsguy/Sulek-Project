// ignore_for_file: must_be_immutable

part of 'rutinas_mock_bloc.dart';

/// Represents the state of RutinasMock in the application.
class RutinasMockState extends Equatable {
  RutinasMockState({this.rutinasMockModelObj});

  RutinasMockModel? rutinasMockModelObj;

  @override
  List<Object?> get props => [
        rutinasMockModelObj,
      ];
  RutinasMockState copyWith({RutinasMockModel? rutinasMockModelObj}) {
    return RutinasMockState(
      rutinasMockModelObj: rutinasMockModelObj ?? this.rutinasMockModelObj,
    );
  }
}
