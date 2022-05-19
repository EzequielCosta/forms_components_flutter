import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_components/pages/turn_on_off_led/turn_on_off_led.dart';

class TurnOnOffLedState extends State<TurnOnOffLed> {
  bool _switchValue = true;
  // bool _switchAndroidValue = false;
  // bool _switchIOSValue = false;
  // bool _switchAdaptativeValue = false;
  // bool _switchImageValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Politic of Privacy")),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  child: Image.asset(_switchValue
                      ? 'assets/images/on.png'
                      : "assets/images/off.png"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const Text("Android"),
                        Transform.scale(
                          scale: 1.5,
                          child: Switch(
                              value: _switchValue,
                              onChanged: (value) {
                                setState(() {
                                  _switchValue = value;
                                });
                              }),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text("IOS"),
                        CupertinoSwitch(
                          value: _switchValue,
                          onChanged: (value) {
                            setState(() {
                              _switchValue = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                const Text("Adaptative"),
                Transform.scale(
                  scale: 1.5,
                  child: Switch(
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      }),
                ),
                const Text("Android Image"),
                Transform.scale(
                  scale: 1.5,
                  child: SizedBox(
                    child: Switch(
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        });
                      },
                      activeThumbImage:
                          const AssetImage("assets/images/thumbs_up.png"),
                      inactiveThumbImage:
                          const AssetImage("assets/images/thumbs_down.png"),
                      activeColor: Colors.green,
                      inactiveTrackColor: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
