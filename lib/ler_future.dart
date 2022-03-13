import 'package:flutter/material.dart';
import 'package:flutter_futurebuilder_basico/conectar.dart';
import 'package:flutter_futurebuilder_basico/detalhes.dart';
import 'model.dart';

class LerFuture extends StatefulWidget {
  const LerFuture({Key? key}) : super(key: key);

  @override
  _LerFutureState createState() => _LerFutureState();
}

class _LerFutureState extends State<LerFuture> {
  Conecta conectar = Conecta();

  @override
  Widget build(BuildContext context) {
    setState(() {});

    return Scaffold(
      appBar: AppBar(
        title: const Text('Read Future Builder'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: conectar.getAll(),
        builder:
            (BuildContext context, AsyncSnapshot<List<ClassCliente>> snapshot) {
          if (snapshot.hasData) {
            List<ClassCliente>? posts = snapshot.data;
            return ListView(
              scrollDirection: Axis.horizontal,
              children: posts!
                  .map(
                    (ClassCliente post) => ListTile(
                      title: Text(
                        post.cliNome.toString(),
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(post.cliFone.toString()),
                      leading: CircleAvatar(
                        child: Text(post.cliNome
                            .toString()
                            .toUpperCase()
                            .substring(0, 1)),
                      ),
                      onTap: () => detalhes(post),
                    ),
                  )
                  .toList(),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  // navegar para detalhes
  detalhes(ClassCliente post) {
    Navigator.of(context)
        .push(MaterialPageRoute(
            builder: (context) => Detalhes(
                  post: post,
                )))
        .then((_) => setState(() {}));
  }
}
