
import 'package:flutter_application_1/features/store/presentation/bloc/product_list_event.dart';
import 'package:flutter_application_1/features/store/presentation/bloc/product_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

sealed class ProductListBloc {}

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  ProductListBloc(super.initialState);
  
}