import 'package:flutter/material.dart';

import '../../../core.dart';

class QMenuList extends StatelessWidget {
  final List items;
  const QMenuList({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        var item = items[index];
        var number = index + 1;
        return Card(
          child: ListTile(
            onTap: () {
              Get.to(item["page"]);
            },
            title: Text(
              "$number. ${item["label"]}",
              style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: const Icon(Icons.chevron_right),
          ),
        );
      },
    );
  }
}
