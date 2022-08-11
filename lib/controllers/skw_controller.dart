import 'package:flutter/cupertino.dart';
import 'package:rep_patt_proj/model/skw_model.dart';
import 'package:rep_patt_proj/repositories/skw_repository.dart';

//aqui temos a ponte entre a view e o repositório
//(que detém as regras de negócio para uso da api mocada)

class SkwController {
  final SkwRepository _skwRepository;

  SkwController(this._skwRepository);

  ValueNotifier<List<SkwModel>> posts = ValueNotifier<List<SkwModel>>([]);

  fetch() async {
    //pega a lista e atribui ao ValueNotifier
    posts.value = await _skwRepository.getList();
  }
}
