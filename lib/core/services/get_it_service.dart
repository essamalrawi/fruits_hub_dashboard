import 'package:fruits_hub_dashboard/core/repos/products_repo/products_repo.dart';
import 'package:fruits_hub_dashboard/core/repos/products_repo/products_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetit() {
  // getIt.registerSingleton<StorageService>(Supabase());
  // getIt.registerSingleton<ImagesRepo>(ImagesRepoImpl());
  getIt.registerSingleton<ProductsRepo>(ProductsRepoImpl());
}
