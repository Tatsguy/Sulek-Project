// ignore_for_file: must_be_immutable

part of 'estad_sticas_mockone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EstadSticasMockone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EstadSticasMockoneEvent extends Equatable {}

/// Event that is dispatched when the EstadSticasMockone widget is first created.
class EstadSticasMockoneInitialEvent extends EstadSticasMockoneEvent {
  @override
  List<Object?> get props => [];
}
