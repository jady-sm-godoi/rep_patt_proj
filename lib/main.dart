import 'package:flutter/material.dart';
import 'package:rep_patt_proj/controllers/skw_controller.dart';
import 'package:rep_patt_proj/repositories/skw_repository_mock.dart';

import 'model/skw_model.dart';

//aqui temos a view onde o usuário interage e
//visualiza os dados da api mocada, já tratados.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //ao criar o SkwController tem que passar o SkwRepository que vai trazer os dados da api mocada, já tratados e modelados.
  final SkwController _controller = SkwController(SkwRepositoryMock());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
    //ao iniciar a página, a lista de dados da api é carregada.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: ValueListenableBuilder<List<SkwModel>>(
        //ouve e controi uma lista dos dados recebidos
        valueListenable: _controller.posts,
        builder: (_, list, __) {
          return ListView.builder(
              itemCount: list.length,
              itemBuilder: (_, idx) {
                return ListTile(
                  title: Text(list[idx].name),
                );
              });
        },
      ),
    );
  }
}
