// ignore_for_file: must_be_immutable

part of 'chatbot_mocktwo_bloc.dart';

/// Represents the state of ChatbotMocktwo in the application.
class ChatbotMocktwoState extends Equatable {
  ChatbotMocktwoState({this.chatbotMocktwoModelObj});

  ChatbotMocktwoModel? chatbotMocktwoModelObj;

  @override
  List<Object?> get props => [
        chatbotMocktwoModelObj,
      ];
  ChatbotMocktwoState copyWith({ChatbotMocktwoModel? chatbotMocktwoModelObj}) {
    return ChatbotMocktwoState(
      chatbotMocktwoModelObj:
          chatbotMocktwoModelObj ?? this.chatbotMocktwoModelObj,
    );
  }
}
