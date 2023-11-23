// ignore_for_file: must_be_immutable

part of 'configuraci_n_mockthree_bloc.dart';

/// Represents the state of ConfiguraciNMockthree in the application.
class ConfiguraciNMockthreeState extends Equatable {
  ConfiguraciNMockthreeState({this.configuraciNMockthreeModelObj});

  ConfiguraciNMockthreeModel? configuraciNMockthreeModelObj;

  @override
  List<Object?> get props => [
        configuraciNMockthreeModelObj,
      ];
  ConfiguraciNMockthreeState copyWith(
      {ConfiguraciNMockthreeModel? configuraciNMockthreeModelObj}) {
    return ConfiguraciNMockthreeState(
      configuraciNMockthreeModelObj:
          configuraciNMockthreeModelObj ?? this.configuraciNMockthreeModelObj,
    );
  }
}
