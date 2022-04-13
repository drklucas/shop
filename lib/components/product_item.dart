import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/product.dart';
import 'package:shop/models/product_list.dart';
import 'package:shop/utils/app_routes.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem(
    this.product, {
    Key? key
    }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return ListTile(
         leading: CircleAvatar(
           backgroundImage: NetworkImage(product.imageUrl),
         ),
         title: Text(product.name),
         trailing: Container(
           width: 100,
           child: Row(children: [
             IconButton(
               icon: Icon(Icons.edit),
               color: Theme.of(context).primaryColor,
               onPressed: () {
                 Navigator.of(context).pushNamed(
                   AppRoutes.PRODUCT_FORM,
                   arguments: product,
                 );
               }, 
               
              ),
              IconButton(
                icon: Icon(Icons.delete),
                color: Theme.of(context).errorColor,
                onPressed: () {
                  Provider.of<ProductList>(
                    context, 
                    listen: false
                    ).removeProduct(product);
                }, 
               
              ),
           ],),
         ),
       );
  }
}