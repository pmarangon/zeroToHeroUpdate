import 'product.dart';

abstract class ProductRepository {
  Future<List<String>> findAllCategories();
  Future<List<Product>> findAllByCategories(String category);
}

abstract class ProductRepository {
  Future<List<String>> findAll();
}

import 'package:from_zero_to_hero_ht/features/products/data/product_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_provider.g.dart';

@riverpod
FutureOr<List<String>> categories(CategoriesRef ref) async {
  final categories =
      await ref.watch(productRepositoryProvider).findAllCategories();
  return categories;
}