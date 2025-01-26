import 'package:dartz/dartz.dart';
import 'package:fruits_hub_dashboard/core/errors/faluires.dart';
import 'package:fruits_hub_dashboard/feature/dashbaord/views/add_product/domain/entities/add_product_entity.dart';

abstract class ProductsRepo {
  Future<Either<Faluires, void>> addProduct(
      AddProductItemEntity addProductItemEntity);
}
