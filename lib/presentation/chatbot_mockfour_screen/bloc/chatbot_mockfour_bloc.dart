import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sulek_fit/presentation/chatbot_mockfour_screen/models/chatbot_mockfour_model.dart';
part 'chatbot_mockfour_event.dart';
part 'chatbot_mockfour_state.dart';

/// A bloc that manages the state of a ChatbotMockfour according to the event that is dispatched to it.
class ChatbotMockfourBloc
    extends Bloc<ChatbotMockfourEvent, ChatbotMockfourState> {
  ChatbotMockfourBloc(ChatbotMockfourState initialState) : super(initialState) {
    on<ChatbotMockfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChatbotMockfourInitialEvent event,
    Emitter<ChatbotMockfourState> emit,
  ) async {
    emit(state.copyWith(strokeHardController: TextEditingController()));
  }
}
