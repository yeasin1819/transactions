import 'package:flutter/material.dart';

import './product.dart';

class Transaction extends StatelessWidget {
  Product product;
  Transaction(this.product);
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      color: Colors.white,
      child: Row(
        children: [
          Image.asset(
            'images/' + product.image,
            height: 100,
            width: 100,
          ),
          SizedBox(
            width: 50,
          ),
          Column(
            children: [
              Text(product.title),
              Text(product.companyName),
              Text("Price: " + product.price + "\$"),
              Text("images/" + product.image),
            ],
          ),
        ],
      ),
    );
  }
}
