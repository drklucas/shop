import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/cart_item_widget.dart';
import 'package:shop/models/cart.dart';
import 'package:shop/models/order_list.dart';

class CartPage extends StatelessWidget {

  const CartPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
     final Cart cart = Provider.of(context);
     final items = cart.items.values.toList();
       return Scaffold(
           appBar: AppBar(
             title: const Text('Carrinho'),
             ),
           body: Column(
             children: [
               Card(
                 margin: const EdgeInsets.all(15),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(
                     horizontal: 15,
                     vertical: 25
                     ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       const Text(
                         'Total',
                         style: TextStyle(
                           fontSize: 20
                         ),
                         ),
                         const SizedBox(width: 10,),
                         Chip(
                           backgroundColor: Theme.of(context).primaryColor,
                           label: Text(
                             'R\$${cart.totalAmount.toStringAsFixed(2)}',
                             style: TextStyle(
                               color: Theme.of(context).primaryTextTheme.headline6?.color,
                             ),
                           ),
                           ),
                           const Spacer(),
                          CartButton(cart: cart),
                     ],
                   ),
                 ),
               ),
               Expanded(
                 child: ListView.builder(
                   itemCount: items.length,
                   itemBuilder: (ctx, i) => CartItemWidget(items[i]),
                 ),
               ),
             ],
           ),
       );
  }
}

class CartButton extends StatefulWidget {
  const CartButton({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  State<CartButton> createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton> {
  bool _isLoading = false;


  @override
  Widget build(BuildContext context) {
    return  _isLoading 
    ? const CircularProgressIndicator()
    : TextButton(
      child: Text('COMPRAR'),
      style: TextButton.styleFrom(
        textStyle: TextStyle(
          color: Theme.of(context).primaryColor,
        ),
      ),
      onPressed: widget.cart.itemsCount == 0 
      ? null
      : () async {
        setState(() => _isLoading = true);

        await Provider.of<OrderList>(
          context,
          listen: false,
          ).addOrder(widget.cart);
          
          widget.cart.clear();
          setState(() => _isLoading = false);
      },
    );
  }
}