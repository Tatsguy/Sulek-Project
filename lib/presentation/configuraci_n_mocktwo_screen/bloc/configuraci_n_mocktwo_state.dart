// ignore_for_file: must_be_immutable

part of 'configuraci_n_mocktwo_bloc.dart';

/// Represents the state of ConfiguraciNMocktwo in the application.
class ConfiguraciNMocktwoState extends Equatable {
  ConfiguraciNMocktwoState({
    this.isSelectedSwitch = false,
    this.configuraciNMocktwoModelObj,
  });

  ConfiguraciNMocktwoModel? configuraciNMocktwoModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        configuraciNMocktwoModelObj,
      ];
  ConfiguraciNMocktwoState copyWith({
    bool? isSelectedSwitch,
    ConfiguraciNMocktwoModel? configuraciNMocktwoModelObj,
  }) {
    return ConfiguraciNMocktwoState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      configuraciNMocktwoModelObj:
          configuraciNMocktwoModelObj ?? this.configuraciNMocktwoModelObj,
    );
  }
}
