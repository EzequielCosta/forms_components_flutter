import 'package:flutter/material.dart';
import 'package:form_components/entities/estado.dart';
import 'package:form_components/pages/listview_api/listview_api.dart';
import 'package:form_components/widgets/estados_scrollview_widget.dart';
import 'package:form_components/widgets/listview_estados.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ListViewApiState extends State<ListViewApi> {
  List<Estado> estados = [];
  List<Estado> _search = [];
  String? dropdownValue = null;
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();
    _scrollController.addListener(() => {
          if (_scrollController.position.pixels ==
              _scrollController.position.maxScrollExtent)
            {fetchPosts()}
        });

    fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Teste")),
      body: FutureBuilder<List<Estado>>(
        future: fetchPosts(),
        builder: (BuildContext context, AsyncSnapshot<List<Estado>> snapshot) {
          if (snapshot.hasData) {
            List<Estado> response = snapshot.data as List<Estado>;
            return ListViewEstados(
                estados: response, scrollController: _scrollController);
          } else if (snapshot.hasError) {
            return Center(child: Text("Error : ${snapshot.error}"));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Future<List<Estado>> fetchPosts() async {
    final response = await http.get(Uri.parse(
        'https://servicodados.ibge.gov.br/api/v1/localidades/estados?orderBy=nome'));

    if (response.statusCode == 200) {
      List<Estado> estados = [];
      List<dynamic> estadosJson = jsonDecode(response.body);

      setState(() {
        estadosJson
            .forEach((element) => {estados.add(Estado.fromJson(element))});
        //page++;
      });
      return estados;
    } else {
      throw Exception('Failed to load Estados');
    }
  }
}
