import 'package:apps/data/data_source/category_data_source.dart';
import 'package:apps/domain/model/general_response.dart';

import '../../domain/repo/fetch_categories_repo/fetch_categories.dart';

class CategoriesRepoImpl implements FetchCategoriesRepo{
 final CategoryDataSource dataSource;

  CategoriesRepoImpl(this.dataSource);
  @override
  Future<GeneralResponse> fetchCategories() async{
 return    await   dataSource.fetchCategories();
   }

}