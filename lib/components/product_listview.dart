import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/product_grid_item.dart';
import 'package:shop/components/product_slide_item.dart';
import 'package:shop/models/product.dart';
import 'package:shop/models/product_list.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({ Key? key }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);
    final List<Product> loadedProducts =  provider.items;
    
    return Row(
        children: [
          Expanded(
            child: Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal, 
                itemCount: loadedProducts.length,
                itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                  value: loadedProducts[i],
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 2.5),
                    height: 100, 
                    width: 100,
                    child: ProductSlideItem(),
                    ),
                  ),
              ),
            ),
          ),
        ],
    );
  }
}
