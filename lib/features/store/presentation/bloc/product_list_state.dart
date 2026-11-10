import 'package:flutter_application_1/features/store/domain/entities/product.dart';

sealed class ProductListState {}

class ProductListLoading extends ProductListState{}

class ProductListSucess extends ProductListState{
  final List<Product>produtos;
  ProductListSucess({required this.produtos});
}

class ProductListFailure extends ProductListState{
  final String msg;
  ProductListFailure({required this.msg })
}