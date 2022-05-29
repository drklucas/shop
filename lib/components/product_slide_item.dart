import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/product.dart';
import 'package:shop/utils/app_routes.dart';

class ProductSlideItem extends StatelessWidget {
  const ProductSlideItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    return Container(
      height: 75,
      width: 75,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
          child: GestureDetector(
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
            onTap: () {
              Navigator.of(context).pushNamed(
                AppRoutes.PRODUCT_DETAIL,
                arguments: product,
              );
            },
          ),
          footer: GridTileBar(
            backgroundColor: Color(0x96032E35),
            title: Text(
              product.name, 
              textAlign: TextAlign.center, 
            ),
          ),
        ),
      ),
    );
  }
}
