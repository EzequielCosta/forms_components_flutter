import 'package:flutter/material.dart';
import 'package:form_components/entities/estado.dart';
import 'package:form_components/widgets/estados_scrollview_widget.dart';

class ListViewEstados extends StatefulWidget {
  final List<Estado> estados;
  final ScrollController scrollController;
  ListViewEstados(
      {Key? key, required this.estados, required this.scrollController})
      : super(key: key);

  @override
  State<ListViewEstados> createState() => _ListViewEstadosState();
}

class _ListViewEstadosState extends State<ListViewEstados> {
  List<Estado> _search = [];
  String? dropdownValue = null;

  @override
  void initState() {
    _search = widget.estados;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.navigation_rounded),
              elevation: 16,
              //style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.orangeAccent,
              ),
              onChanged: (String? value) {
                setState(() {
                  _search = widget.estados;
                  dropdownValue = value!;
                  _search = _search
                      .where((element) => element.regiao.sigla.contains(value))
                      .toList();
                });
              },
              items: <String>['N', 'NE', 'CO', 'S', 'SE']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            EstadoScrollViewWidget(
                scrollController: widget.scrollController, estados: _search)
          ],
        )
      ],
    );
  }
}
