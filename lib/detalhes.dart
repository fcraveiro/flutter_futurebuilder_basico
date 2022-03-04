import 'package:flutter/material.dart';
import 'model.dart';

class Detalhes extends StatefulWidget {
  const Detalhes({Key? key, required this.post}) : super(key: key);

  final ClassCliente post;

  @override
  State<Detalhes> createState() => _DetalhesState();
}

late ClassCliente post;
int index = 0;

class _DetalhesState extends State<Detalhes> {
  @override
  void initState() {
    post = widget.post;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nome  ${post.cliNome.toString()}',
            ),
            Text(
              'Endereço  ${post.cliEnde.toString()}',
            ),
            Text(
              'Cidade    ${post.cliCity.toString()}',
            ),
            Text(
              'Fone    ${post.cliFone.toString()}',
            ),
          ],
        ),
      ),
    );
  }
}
