import 'package:rep_patt_proj/model/skw_model.dart';

// classe abstrata como um contrato dos métodos que serão extendidos
//nas chamadas da api.
//os metodos da classe devem ser necessariamente
//implementados quando esta classe é extendida.

abstract class SkwRepository {
  //o método é futuro pois não sabemos quando a api retorna.
  Future<List<SkwModel>> getList();
}
