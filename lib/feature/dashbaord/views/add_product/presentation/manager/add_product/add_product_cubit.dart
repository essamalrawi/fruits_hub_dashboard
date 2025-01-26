import 'package:bloc/bloc.dart';
import 'package:fruits_hub_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:fruits_hub_dashboard/core/repos/products_repo/products_repo.dart';
import 'package:meta/meta.dart';
import '../../../domain/entities/add_product_entity.dart';

part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit(this.imagesRepo, this.productsRepo)
      : super(AddProductInitial());

  final ImagesRepo imagesRepo;
  final ProductsRepo productsRepo;

  Future<void> addProduct(AddProductItemEntity addProductItemEntity) async {
    emit(AddProductLoading());
    var result = await imagesRepo.uploadImage(addProductItemEntity.image);
    result.fold((f) {
      emit(AddProductFaluire(errorMessage: f.message));
    }, (url) {
      addProductItemEntity.imageUrl = url;
      productsRepo.addProduct(addProductItemEntity);
      var result = productsRepo.addProduct(addProductItemEntity);
    });
  }
}
