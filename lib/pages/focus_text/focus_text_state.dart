import 'package:flutter/material.dart';
import 'package:form_components/pages/focus_text/focus_text.dart';

class FocusTextState extends State<FocusText> {
  late FocusNode focusFields1;
  late FocusNode focusFields2;
  late FocusNode focusFields3;

  @override
  void initState() {
    focusFields1 = FocusNode();
    focusFields2 = FocusNode();
    focusFields3 = FocusNode();

    //focusFields1.requestFocus();
    super.initState();
  }

  @override
  void dispose() {
    focusFields1.dispose();
    focusFields2.dispose();
    focusFields3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Focus in text")),
      body: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              autofocus: true,
              keyboardType: TextInputType.text,
              onEditingComplete: () {
                focusFields2.requestFocus();
              },
              focusNode: focusFields1,
              decoration: InputDecoration(label: Text("Field 01")),
            ),
            TextField(
              focusNode: focusFields2,
              decoration: InputDecoration(label: Text("Field 02")),
              onEditingComplete: () {
                focusFields3.requestFocus();
              },
            ),
            TextField(
              focusNode: focusFields3,
              decoration: InputDecoration(label: Text("Field 03")),
            ),
          ],
        ),
      ),
    );
  }
}
