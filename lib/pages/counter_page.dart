import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';
import 'package:shop/provider/counter.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({ Key? key,  }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(
             title: Text('counter page'),
             ),
           body: Column(
             children: [
               Text('0'),
               IconButton(
                 onPressed: () {
                   print(CounterProvider.of(context));
                 },
                 icon: Icon(Icons.add)
               ),
             ],
           ),
       );
  }
}

