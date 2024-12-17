

import 'package:apps/domain/model/general_response.dart';

abstract class FetchCategoriesRepo{
  Future<GeneralResponse>fetchCategories() ;
}