import 'package:dartz/dartz.dart';
import 'package:fruits_hub_dashboard/core/errors/faluires.dart';
import 'package:fruits_hub_dashboard/core/repos/products_repo/products_repo.dart';
import 'package:fruits_hub_dashboard/feature/dashbaord/views/add_product/domain/entities/add_product_entity.dart';

class ProductsRepoImpl implements ProductsRepo {
  @override
  Future<Either<Faluires, void>> addProduct(
      AddProductItemEntity addProductItemEntity) {
    // TODO: implement addProduct
    throw UnimplementedError();
  }
}
