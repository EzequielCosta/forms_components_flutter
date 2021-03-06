import 'package:flutter/material.dart';
import 'package:form_components/pages/filter_list_view/filter_list_view.dart';
import 'package:form_components/pages/focus_text/focus_text.dart';
import 'package:form_components/pages/home/home.dart';
import 'package:form_components/pages/listview_api/listview_api.dart';
import 'package:form_components/pages/politics_of_privacy/politics_of_privacy.dart';
import 'package:form_components/pages/turn_on_off_led/turn_on_off_led.dart';
import 'package:form_components/pages/zoom_image_slider/zoom_image_slider.dart';

void main(List<String> args) {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/filter_api",
      routes: {
        "/home": (context) => Home(),
        "/focus_text": (context) => FocusText(),
        "/politic_of_privacy": (context) => PoliticOfPrivacy(),
        "/turn_on_off_led": (context) => TurnOnOffLed(),
        "/zoom_image_slider": (context) => ZoomImageSlider(),
        "/filter_listview": (context) => FilterListView(),
        "/filter_api": (context) => ListViewApi()
      },
    );
  }
}
