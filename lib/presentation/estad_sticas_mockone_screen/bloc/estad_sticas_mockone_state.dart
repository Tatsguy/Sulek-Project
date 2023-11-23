// ignore_for_file: must_be_immutable

part of 'estad_sticas_mockone_bloc.dart';

/// Represents the state of EstadSticasMockone in the application.
class EstadSticasMockoneState extends Equatable {
  EstadSticasMockoneState({this.estadSticasMockoneModelObj});

  EstadSticasMockoneModel? estadSticasMockoneModelObj;

  @override
  List<Object?> get props => [
        estadSticasMockoneModelObj,
      ];
  EstadSticasMockoneState copyWith(
      {EstadSticasMockoneModel? estadSticasMockoneModelObj}) {
    return EstadSticasMockoneState(
      estadSticasMockoneModelObj:
          estadSticasMockoneModelObj ?? this.estadSticasMockoneModelObj,
    );
  }
}
