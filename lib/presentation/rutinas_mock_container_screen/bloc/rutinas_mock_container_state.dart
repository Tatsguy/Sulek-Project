// ignore_for_file: must_be_immutable

part of 'rutinas_mock_container_bloc.dart';

/// Represents the state of RutinasMockContainer in the application.
class RutinasMockContainerState extends Equatable {
  RutinasMockContainerState({this.rutinasMockContainerModelObj});

  RutinasMockContainerModel? rutinasMockContainerModelObj;

  @override
  List<Object?> get props => [
        rutinasMockContainerModelObj,
      ];
  RutinasMockContainerState copyWith(
      {RutinasMockContainerModel? rutinasMockContainerModelObj}) {
    return RutinasMockContainerState(
      rutinasMockContainerModelObj:
          rutinasMockContainerModelObj ?? this.rutinasMockContainerModelObj,
    );
  }
}
