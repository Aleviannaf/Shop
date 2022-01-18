import 'package:flutter/material.dart';
import 'package:shop/app/model/product_model.dart';

class ProductItem extends StatelessWidget {
  final Product productItem;
  const ProductItem({Key? key, required this.productItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child:Image.network(productItem.imageUrl, fit: BoxFit.cover,),
        footer: GridTileBar(
          backgroundColor: Colors.black38,
          leading: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.favorite)),
          title: Text(productItem.title,
          textAlign: TextAlign.center,),
          trailing: 
          IconButton(onPressed: (){},
          icon: const Icon(Icons.shopping_cart),),
          
        ),
        ),
    );
  }
}
