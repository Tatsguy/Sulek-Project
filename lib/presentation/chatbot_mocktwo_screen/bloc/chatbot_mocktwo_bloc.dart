import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sulek_fit/presentation/chatbot_mocktwo_screen/models/chatbot_mocktwo_model.dart';
part 'chatbot_mocktwo_event.dart';
part 'chatbot_mocktwo_state.dart';

/// A bloc that manages the state of a ChatbotMocktwo according to the event that is dispatched to it.
class ChatbotMocktwoBloc
    extends Bloc<ChatbotMocktwoEvent, ChatbotMocktwoState> {
  ChatbotMocktwoBloc(ChatbotMocktwoState initialState) : super(initialState) {
    on<ChatbotMocktwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChatbotMocktwoInitialEvent event,
    Emitter<ChatbotMocktwoState> emit,
  ) async {}
}
