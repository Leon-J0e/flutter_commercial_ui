import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/models.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedButton(
          color: Colors.red,
          icon: Icons.remove,
          press: () {
            if (numOfItems > 1) {
              setState(() {
                numOfItems--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding / 2,
          ),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlinedButton(
          color: widget.product.color,
          icon: Icons.add,
          press: () {
            setState(() {
              numOfItems++;
            });
          },
        ),
      ],
    );
  }

  SizedBox buildOutlinedButton(
      {required IconData icon,
      required VoidCallback press,
      required Color color}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
            padding: EdgeInsets.zero,
            primary: color),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
