import 'package:flutter/material.dart';
import 'package:form_components/pages/filter_list_view/filter_list_view.dart';

class FilterListViewState extends State<FilterListView> {
  String? _itemSelected = null;

  late List<String> _names;
  late List<String> _search;

  @override
  void initState() {
    _names = [
      "Paulo Afonso",
      "João Guilherme",
      "Pedro Victor",
      "Pedro Nery",
      "Alission Campos",
      "Mateus Sales",
      "Marcos Barreto",
      "Ezequiel Costa",
      "Eliane Costa",
      "Lívia Silva",
      "Maria Carolina",
      "Andressa Mota",
      "Sara Rebeca",
      "Mariana Nicoli",
      "Hadassa Maria",
      "Luiz Wanderson",
      "Luiz Vanderson",
      "Miguel Pinho",
      "Luiz Fernando"
    ];
    _search = _names;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Filter")),
      body: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, top: 30),
        child: Center(
            child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Autocomplete<String>(
                  optionsBuilder: (TextEditingValue textEditingValue) {
                    if (textEditingValue.text == '') {
                      setState(() {
                        _search = _names;
                      });
                      return const Iterable<String>.empty();
                    }
                    return _names.where((String option) {
                      return option
                          .contains(textEditingValue.text.toLowerCase());
                    });
                  },
                  onSelected: (String selection) {
                    setState(() {
                      _itemSelected = selection;
                      var interable = _names.where((String item) {
                        return item.contains(selection.toLowerCase());
                      }).toList();
                      _search = interable;
                    });
                  },
                )),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        color: Colors.lightBlueAccent,
                        height: 30,
                        child: Text(
                          _search[index],
                          textAlign: TextAlign.center,
                        ));
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 5,
                    );
                  },
                  itemCount: _search.length),
            ),
          ],
        )),
      ),
    );
  }
}
