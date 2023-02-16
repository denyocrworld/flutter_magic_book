// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class AwesomeMenu extends StatefulWidget {
  final List<String> menuList;
  final List<Widget> children;
  const AwesomeMenu({
    Key? key,
    required this.menuList,
    required this.children,
  }) : super(key: key);

  @override
  State<AwesomeMenu> createState() => _AwesomeMenuState();
}

class _AwesomeMenuState extends State<AwesomeMenu> {
  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300.0,
          child: IndexedStack(
            index: selectedIndex,
            children: widget.children,
          ),
        ),
        Container(
          height: 60.0,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(
                16.0,
              ),
            ),
          ),
          child: Row(
              children: List.generate(
            widget.menuList.length,
            (index) {
              var item = widget.menuList[index];
              bool isSelected = index == selectedIndex;
              return Expanded(
                child: InkWell(
                  onTap: () => updateIndex(index),
                  child: AnimatedScale(
                    duration: const Duration(milliseconds: 900),
                    scale: isSelected ? 1.4 : 1.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // if (isSelected)
                        //   const CircleAvatar(
                        //     radius: 4.0,
                        //     backgroundColor: Colors.orange,
                        //   ),
                        Text(
                          item,
                          style: TextStyle(
                            color: selectedIndex == index
                                ? Colors.white
                                : Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
        ),
      ],
    );
  }
}
