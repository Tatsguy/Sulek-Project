// ignore_for_file: must_be_immutable

part of 'chatbot_mockfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChatbotMockfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChatbotMockfourEvent extends Equatable {}

/// Event that is dispatched when the ChatbotMockfour widget is first created.
class ChatbotMockfourInitialEvent extends ChatbotMockfourEvent {
  @override
  List<Object?> get props => [];
}
