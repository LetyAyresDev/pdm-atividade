import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/store/domain/entities/product.dart';
import 'package:flutter_application_1/features/store/presentation/bloc/product_list_bloc.dart';
import 'package:flutter_application_1/features/store/presentation/bloc/product_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ProductListBloc(),
      child: Scaffold(
        appBar: AppBar(title: const Text("Catálogo de Produtos"),
        ),
        body: BlocBuilder<ProductListBloc, ProductListState>(
          builder: (context, state) {

            if (state is ProductListSucess){
              return ListView.builder
              (itemCount: state.produtos.length,
              itemBuilder: (BuildContext context, int i){
                Product produto = state.produtos[i];
                return ListTile(
                  leading: Image.network(
                    produto.url,
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                  title: Text("${produto.nome}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${produto.categoria}"),
                      Row(
                        children: [
                          Text("RS ${produto.preco}"),
                          SizedBox(width: 10),
                          Text("${produto.avaliacao}"),
                        ],
                      )
                    ],
                  ),
                );
              }
              );
            }
            if (state is ProductListFailure){
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text("(${state.msg})", style: TextStyle(fontSize: 16))
                  )],
              );
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: CircularProgressIndicator()
                )],
            );
          },
        ),
      ),
    );
  }
}