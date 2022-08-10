import 'package:rep_patt_proj/model/skw_model.dart';

abstract class SkwRepository {
  Future<List<SkwModel>> getList();
}
