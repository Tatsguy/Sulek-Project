// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [intro_mock_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class IntroMockModel extends Equatable {
  IntroMockModel() {}

  IntroMockModel copyWith() {
    return IntroMockModel();
  }

  @override
  List<Object?> get props => [];
}
