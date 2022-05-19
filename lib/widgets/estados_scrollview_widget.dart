import 'package:flutter/material.dart';
import 'package:form_components/entities/estado.dart';
import 'package:form_components/widgets/estado_widget.dart';

class EstadoScrollViewWidget extends StatelessWidget {
  final List<Estado> estados;
  final ScrollController scrollController;

  const EstadoScrollViewWidget(
      {required this.scrollController, required this.estados, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: scrollController,
      padding: const EdgeInsets.all(8),
      itemCount: estados.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
            // onTap: () => Navigator.pushNamed(context, "/detail",
            //     arguments: DetailArguments(postId: posts[index].id)),
            child: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 79, 162, 204),
          ),
          child: EstadoWidget(
            id: estados[index].id,
            nome: estados[index].nome,
          ),
        ));
      },
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 4,
      ),
    );
    // ListView(padding: EdgeInsets.all(8), children: widgets);
  }
}
