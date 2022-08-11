import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:rep_patt_proj/model/skw_model.dart';
import 'package:rep_patt_proj/repositories/skw_repository.dart';

//repositorio que chama a api mocada,
//usando o contrato que criamos e extendendo seu método
//para tratar os dados da api mocada

class SkwRepositoryMock implements SkwRepository {
  @override
  Future<List<SkwModel>> getList() async {
    var value = await rootBundle
        .loadString('assets/data.json'); //rooBundle busca no assets os dados

    List skwJson =
        jsonDecode(value); //transformando os dados em json em uma lista

    return skwJson
        .map((e) => SkwModel.fromJson(e))
        .toList(); //percorrendo a lista para gerar outra lista de acordo com o modelo
  }
}
