import 'package:flutter/cupertino.dart';
import 'package:rep_patt_proj/model/skw_model.dart';
import 'package:rep_patt_proj/repositories/skw_repository.dart';

class SkwController {
  final SkwRepository _skwRepository;

  SkwController(this._skwRepository);

  ValueNotifier<List<SkwModel>> posts = ValueNotifier<List<SkwModel>>([]);

  fetch() async {
    posts.value = await _skwRepository.getList();
  }
}
