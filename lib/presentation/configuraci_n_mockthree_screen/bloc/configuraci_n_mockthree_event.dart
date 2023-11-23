// ignore_for_file: must_be_immutable

part of 'configuraci_n_mockthree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ConfiguraciNMockthree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ConfiguraciNMockthreeEvent extends Equatable {}

/// Event that is dispatched when the ConfiguraciNMockthree widget is first created.
class ConfiguraciNMockthreeInitialEvent extends ConfiguraciNMockthreeEvent {
  @override
  List<Object?> get props => [];
}
