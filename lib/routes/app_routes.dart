import 'package:flutter/material.dart';
import 'package:sulek_fit/presentation/splash_mock_screen/splash_mock_screen.dart';
import 'package:sulek_fit/presentation/intro_mock_screen/intro_mock_screen.dart';
import 'package:sulek_fit/presentation/ingresar_mock_screen/ingresar_mock_screen.dart';
import 'package:sulek_fit/presentation/rutinas_mock_container_screen/rutinas_mock_container_screen.dart';
import 'package:sulek_fit/presentation/calendario_mockone_screen/calendario_mockone_screen.dart';
import 'package:sulek_fit/presentation/chatbot_mocktwo_screen/chatbot_mocktwo_screen.dart';
import 'package:sulek_fit/presentation/chatbot_mockfour_screen/chatbot_mockfour_screen.dart';
import 'package:sulek_fit/presentation/configuraci_n_mocktwo_screen/configuraci_n_mocktwo_screen.dart';
import 'package:sulek_fit/presentation/configuraci_n_mockthree_screen/configuraci_n_mockthree_screen.dart';
import 'package:sulek_fit/presentation/estad_sticas_mockone_screen/estad_sticas_mockone_screen.dart';
import 'package:sulek_fit/presentation/temporizador_mockthree_screen/temporizador_mockthree_screen.dart';
import 'package:sulek_fit/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashMockScreen = '/splash_mock_screen';

  static const String introMockScreen = '/intro_mock_screen';

  static const String ingresarMockScreen = '/ingresar_mock_screen';

  static const String rutinasMockPage = '/rutinas_mock_page';

  static const String rutinasMockContainerScreen =
      '/rutinas_mock_container_screen';

  static const String calendarioMockoneScreen = '/calendario_mockone_screen';

  static const String chatbotMocktwoScreen = '/chatbot_mocktwo_screen';

  static const String chatbotMockfourScreen = '/chatbot_mockfour_screen';

  static const String configuraciNMocktwoScreen =
      '/configuraci_n_mocktwo_screen';

  static const String configuraciNMockthreeScreen =
      '/configuraci_n_mockthree_screen';

  static const String estadSticasMockoneScreen = '/estad_sticas_mockone_screen';

  static const String temporizadorMockthreeScreen =
      '/temporizador_mockthree_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashMockScreen: SplashMockScreen.builder,
        introMockScreen: IntroMockScreen.builder,
        ingresarMockScreen: IngresarMockScreen.builder,
        rutinasMockContainerScreen: RutinasMockContainerScreen.builder,
        calendarioMockoneScreen: CalendarioMockoneScreen.builder,
        chatbotMocktwoScreen: ChatbotMocktwoScreen.builder,
        chatbotMockfourScreen: ChatbotMockfourScreen.builder,
        configuraciNMocktwoScreen: ConfiguraciNMocktwoScreen.builder,
        configuraciNMockthreeScreen: ConfiguraciNMockthreeScreen.builder,
        estadSticasMockoneScreen: EstadSticasMockoneScreen.builder,
        temporizadorMockthreeScreen: TemporizadorMockthreeScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashMockScreen.builder
      };
}
