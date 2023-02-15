import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

getTitle({
  required String title,
}) {
  return Container(
    width: MediaQuery.of(Get.currentContext).size.width,
    padding: const EdgeInsets.all(12.0),
    decoration: const BoxDecoration(),
    child: Text(
      title,
      style: const TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

getMenu({
  required String label,
  required Widget view,
  bool disabled = false,
}) {
  bool isFlutter = label.toLowerCase().contains("flutter");
  double size = (MediaQuery.of(Get.currentContext).size.width - 60) / 2;

  return InkWell(
    onTap: () {
      if (disabled) return;
      Get.to(view);
    },
    child: Card(
      color: disabled ? Colors.grey : null,
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(64.0),
      ),
      child: Stack(
        children: [
          Center(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
  );
  return InkWell(
    onTap: () {
      if (disabled) return;
      Get.to(view);
    },
    child: Container(
      width: size,
      height: size,
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 6.0,
      ),
      decoration: BoxDecoration(
        color: disabled ? Colors.grey : Colors.orange,
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 24,
            offset: Offset(0, 11),
          ),
        ],
      ),
      child: Center(
        child: FittedBox(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: disabled ? Colors.grey[900] : Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}

getGrid({
  required List<Widget> children,
  required String title,
}) {
  return Column(
    children: [
      getTitle(title: title),
      GridView(
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 3.0,
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
        ),
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        children: children,
      ),
    ],
  );
}
