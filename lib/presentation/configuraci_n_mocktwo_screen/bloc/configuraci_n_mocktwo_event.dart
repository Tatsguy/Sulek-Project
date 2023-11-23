// ignore_for_file: must_be_immutable

part of 'configuraci_n_mocktwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ConfiguraciNMocktwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ConfiguraciNMocktwoEvent extends Equatable {}

/// Event that is dispatched when the ConfiguraciNMocktwo widget is first created.
class ConfiguraciNMocktwoInitialEvent extends ConfiguraciNMocktwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends ConfiguraciNMocktwoEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
