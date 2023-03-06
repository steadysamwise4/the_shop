import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class UserProductItem extends StatelessWidget {
  const UserProductItem(this.title, this.imageUrl);

  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: Container(
        width: 100,
        child: Row(children: <Widget>[
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {},
            color: Theme.of(context).colorScheme.primary,
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {},
            color: Theme.of(context).errorColor,
          ),
        ]),
      ),
    );
  }
}
