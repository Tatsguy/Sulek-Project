// ignore_for_file: must_be_immutable

part of 'ingresar_mock_bloc.dart';

/// Represents the state of IngresarMock in the application.
class IngresarMockState extends Equatable {
  IngresarMockState({
    this.correoelectrnicoController,
    this.strokeHardController,
    this.ingresarMockModelObj,
  });

  TextEditingController? correoelectrnicoController;

  TextEditingController? strokeHardController;

  IngresarMockModel? ingresarMockModelObj;

  @override
  List<Object?> get props => [
        correoelectrnicoController,
        strokeHardController,
        ingresarMockModelObj,
      ];
  IngresarMockState copyWith({
    TextEditingController? correoelectrnicoController,
    TextEditingController? strokeHardController,
    IngresarMockModel? ingresarMockModelObj,
  }) {
    return IngresarMockState(
      correoelectrnicoController:
          correoelectrnicoController ?? this.correoelectrnicoController,
      strokeHardController: strokeHardController ?? this.strokeHardController,
      ingresarMockModelObj: ingresarMockModelObj ?? this.ingresarMockModelObj,
    );
  }
}
