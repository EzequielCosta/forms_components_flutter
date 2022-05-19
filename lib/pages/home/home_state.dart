import 'package:flutter/material.dart';
import 'package:form_components/pages/home/home.dart';

class HomeState extends State<Home> {
  final List<bool> _textStyles = List.generate(3, (index) => false);
  final messageTextFieldController = TextEditingController();
  bool weight = false;
  bool underline = false;
  bool italic = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    messageTextFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Text Styles")),
      body: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ToggleButtons(
              isSelected: _textStyles,
              onPressed: _clickButton,
              children: const <Widget>[
                Icon(
                  Icons.format_italic,
                ),
                Icon(Icons.format_bold_rounded),
                Icon(Icons.format_underline),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 20),
                child: Text(
                  "Teste",
                  style: TextStyle(
                      fontWeight: _textStyles[1] ? FontWeight.bold : null,
                      fontStyle: _textStyles[0] ? FontStyle.italic : null,
                      decoration:
                          _textStyles[2] ? TextDecoration.underline : null),
                )),
          ],
        ),
      ),
    );
  }

  void _clickButton(int index) {
    setState(() {
      _textStyles[index] = !_textStyles[index];
    });
  }
}
