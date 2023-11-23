// ignore_for_file: must_be_immutable

part of 'chatbot_mocktwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChatbotMocktwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChatbotMocktwoEvent extends Equatable {}

/// Event that is dispatched when the ChatbotMocktwo widget is first created.
class ChatbotMocktwoInitialEvent extends ChatbotMocktwoEvent {
  @override
  List<Object?> get props => [];
}
