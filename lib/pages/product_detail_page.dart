import 'package:flutter/material.dart';
import 'package:shop/components/product_listview.dart';
import 'package:shop/models/product.dart';
import 'package:shop/utils/app_routes.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Product product =
        ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
              AppRoutes.AUTH_OR_HOME,
              arguments: product,
            );
          }, 
          icon: Icon(Icons.arrow_back))
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    product.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Un. price: ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 28,
                        ),
                      ),
                      Text(
                        'R\$ ${product.price}',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  child: Text(
                    product.description,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.grey.shade100, 
                    Colors.grey.shade200
                  ],
                ),
              ),
              width: MediaQuery.of(context).size.width * 0.95,
              height: 165,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'More items: ',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ProductListView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
