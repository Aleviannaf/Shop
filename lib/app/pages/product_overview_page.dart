import 'package:flutter/material.dart';
import 'package:shop/app/data/dummy_data.dart';
import 'package:shop/app/model/product_model.dart';


class ProductOverviewPage extends StatelessWidget {
  final List<Product> loadedProduct = dummyProduct;
  ProductOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Minha Loja'),
      ),
      body: SafeArea(
          child: GridView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: loadedProduct.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3/2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10
              ), 
              itemBuilder: (context, index) => Text(loadedProduct[index].title),)),
    );
  }
}
