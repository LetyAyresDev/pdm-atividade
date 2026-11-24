
import 'package:flutter_application_1/features/store/domain/entities/product.dart';
import 'package:flutter_application_1/features/store/infra/data/product_repository.dart';
import 'package:flutter_application_1/features/store/presentation/bloc/product_list_event.dart';
import 'package:flutter_application_1/features/store/presentation/bloc/product_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  final ProductRepository produtoRepo = ProductRepository();
  
  
    ProductListBloc() : super(ProductListLoading()) {
    on<ProductListInitialize>((event, emit) async {

    emit(ProductListLoading());
    await Future.delayed(Duration(seconds: 3));

      
  List<Product> dados = produtoRepo.produtos;

  if(dados.isNotEmpty)  {
    emit(ProductListSucess(produtos: dados));
  } else{
    emit(ProductListFailure(msg: "Sem dados"));
  }

  });

  add(ProductListInitialize());
  }
  
}