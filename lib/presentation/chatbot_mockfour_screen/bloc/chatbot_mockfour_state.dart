// ignore_for_file: must_be_immutable

part of 'chatbot_mockfour_bloc.dart';

/// Represents the state of ChatbotMockfour in the application.
class ChatbotMockfourState extends Equatable {
  ChatbotMockfourState({
    this.strokeHardController,
    this.chatbotMockfourModelObj,
  });

  TextEditingController? strokeHardController;

  ChatbotMockfourModel? chatbotMockfourModelObj;

  @override
  List<Object?> get props => [
        strokeHardController,
        chatbotMockfourModelObj,
      ];
  ChatbotMockfourState copyWith({
    TextEditingController? strokeHardController,
    ChatbotMockfourModel? chatbotMockfourModelObj,
  }) {
    return ChatbotMockfourState(
      strokeHardController: strokeHardController ?? this.strokeHardController,
      chatbotMockfourModelObj:
          chatbotMockfourModelObj ?? this.chatbotMockfourModelObj,
    );
  }
}
