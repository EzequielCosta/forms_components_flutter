import 'package:flutter/material.dart';

class CheckBoxWithTitle extends StatelessWidget {
  CheckBoxWithTitle({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text("Aceito compartilhar dados para fins de propaganda"),
        value: false,
        controlAffinity: ListTileControlAffinity.leading,
        onChanged: (value) => {});
  }
}
