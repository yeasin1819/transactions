import 'package:flutter/material.dart';
import 'package:productstransaction/transcations.dart';

import './product.dart';
import './transcations.dart';

int main() {
  runApp(HomePage());
  return 0;
}

class HomePage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  List<Product> transactionList = [
    Product("phone.jpg", "Mobile", "Nokia", "5000"),
    Product("phone.jpg", "Mobile", "Nokia", "5000"),
    Product("phone.jpg", "Mobile", "Nokia", "5000"),
    Product("phone.jpg", "Mobile", "Nokia", "5000"),
    Product("phone.jpg", "Mobile", "Nokia", "5000"),
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Transactions",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Transaction"),
          centerTitle: true,
        ),
        body: Container(
            child: Column(
              children: [
                ...transactionList.map((product) {
                  return Transaction(product);
                })
              ],
            ),
          ),
        ),
    );
  }
}
