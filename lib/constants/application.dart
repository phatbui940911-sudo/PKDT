import 'package:flutter/material.dart';

class Application {
  static String baseUrl = 'https://evening-mountain-96387.herokuapp.com/';
  static bool isShowingError = false;

  Future<void> initialAppLication(BuildContext context) async {
    try {
      // await BaseLocalData.initialBox();

      // Initial language

      // AppBloc.userBloc.add(GetLanguagesEvent());
      // AppBloc.requestBloc.add(GetSpecialtyEvent());
      // AppBloc.skillBloc.add(GetPositionsEvent());
    } catch (error) {
      debugPrint(error.toString());
    }
  }
}
