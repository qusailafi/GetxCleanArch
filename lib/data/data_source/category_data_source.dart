import 'package:apps/data/request_manger.dart';
import 'package:apps/domain/model/general_response.dart';
import 'package:apps/utils/utils.dart';

class CategoryDataSource extends NetWorkCalls{
  Future<GeneralResponse>fetchCategories() async{
return  await getApi(Utils.GET_CATEGORIES);

  }
}