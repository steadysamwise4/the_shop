import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem(this.id, this.price, this.quantity, this.title);

  final String id;
  final double price;
  final int quantity;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ListTile(
          leading: CircleAvatar(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: FittedBox(
                child: Text('\$$price'),
              ),
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
          title: Text(title),
          subtitle: Text('Total: \$${(price + quantity)}'),
          trailing: Text('$quantity x'),
        ),
      ),
    );
  }
}
