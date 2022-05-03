import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/models.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: defaultPadding,
      ),
      child: Text(
        product.description,
        style: const TextStyle(
          height: 1.5,
        ),
      ),
    );
  }
}
