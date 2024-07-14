import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:routetask/Domain/Di.dart';
import 'package:routetask/Ui/Product_Screen/Cubit/Products_States.dart';
import 'package:routetask/Ui/Product_Screen/Cubit/Products_ViewModel.dart';
import 'package:routetask/Ui/Widget/Product_Item.dart';
import 'package:routetask/Ui/Widget/Row_Widget.dart';

class ProductScreen extends StatelessWidget {
  ProductsViewModel viewModel =
      ProductsViewModel(getProductsUseCase: injectproductsUsecase());
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsViewModel, ProductsState>(
      bloc: viewModel..GetAllProducts(),
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
              title: const Image(
                  image: AssetImage('assets/images/app_bar_logo.png'))),
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row_Widget(),
              ),
              const SizedBox(
                height: 20,
              ),
              state is LoadingProductState
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: Colors.blue,
                      ),
                    )
                  : Expanded(
                      child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: viewModel.Productdata.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 2 / 2.4,
                                  crossAxisSpacing: 16,
                                  mainAxisSpacing: 16),
                          itemBuilder: (context, index) {
                            return Products_Item(
                              productsdata: viewModel.Productdata[index],
                            );
                          }),
                    )
            ],
          ),
        );
      },
    );
  }
}
