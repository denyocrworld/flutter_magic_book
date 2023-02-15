import 'package:flutter/material.dart';

class ExCard extends StatelessWidget {
  final String? title;
  final double? width;
  final IconData? icon;
  final List<Widget> children;
  final List<Widget> actions;
  final List<Widget> bottomActions;
  final EdgeInsets? padding;
  final Color? color;
  const ExCard({
    Key? key,
    this.title,
    this.width,
    this.children = const [],
    this.padding,
    this.actions = const [],
    this.bottomActions = const [],
    this.icon,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool showTitle = title != null;
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      child: Card(
        color: color,
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (showTitle) ...[
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 20.0,
                  ),
                  child: Row(
                    children: [
                      if (icon != null) ...[
                        Icon(icon),
                        const SizedBox(
                          width: 6.0,
                        ),
                      ],
                      Expanded(
                        child: Text(
                          title!,
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Row(
                        children: List.generate(
                          actions.length,
                          (index) {
                            return SizedBox(
                              height: 30.0,
                              child: FittedBox(
                                child: actions[index],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  height: 1.0,
                ),
              ],
              Container(
                padding: padding ?? const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: children,
                ),
              ),
              if (bottomActions.isNotEmpty) ...[
                const Divider(
                  height: 1.0,
                ),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: bottomActions,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
