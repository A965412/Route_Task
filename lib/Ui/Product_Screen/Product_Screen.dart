import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Widget/Product_Item.dart';
import '../Widget/Row_Widget.dart';
import 'Cubit/Products_States.dart';
import 'Cubit/Products_ViewModel.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsPageCubit()..getProducts(),
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0), // Adjust the height as needed
            child: AppBar(
              backgroundColor: Color(0xff004182),
              title: Row_Widget(),
            ),
          ),
          body: BlocBuilder<ProductsPageCubit, ProductsState>(
            builder: (context, state) {
              if (state is IntailProductState) {
                return const Center(child: CircularProgressIndicator());
              }

              if (state is ErrorProductsState) {
                return Center(
                  child: Text(state.error),
                );
              }

              if (state is SucessProductsState) {
                return GridView.builder(
                  itemCount: state.ProductsData.limit as int?,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: (192 / 237),
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return ProductItem(
                        product: state.ProductsData.products![index],
                        index: index);
                  },
                );
              }

              return Container();
            },
          )),
    );
  }
}