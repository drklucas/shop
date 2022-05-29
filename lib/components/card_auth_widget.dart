import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shop/components/slide_fade_transition.dart';

// class cardAuthWidget extends StatelessWidget {
//   const cardAuthWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//    }
// }

//  child: Text(
//         'Sports Store',
//         style: TextStyle(
//           fontSize: 45,
//           fontFamily: 'Anton',
//           color: Theme.of(context).accentTextTheme.headline6?.color,
//         ),
//       ),

class CardAuthWidget extends StatefulWidget {
  @override
  _CardAuthWidgetState createState() => _CardAuthWidgetState();
}

class _CardAuthWidgetState extends State<CardAuthWidget> {
  @override
  Widget build(BuildContext context) {
    return SlideFadeTransition(
      delayStart: Duration(milliseconds: 300),
      animationDuration: Duration(milliseconds: 800),
      curve: Curves.fastLinearToSlowEaseIn,
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 20,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 70,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFF20BECD),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              color: Colors.black26,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Text(
          'Sports Store',
          style: TextStyle(
            fontSize: 45,
            fontFamily: 'Anton',
            color: Theme.of(context).accentTextTheme.headline6?.color,
          ),
        ),
      ),
    );
  }
}
