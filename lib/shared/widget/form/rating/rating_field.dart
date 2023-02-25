// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

/*
State management
Getx
BLoC
Mobx
Riverpod

Architecture
MVC
MVVM
Clean Architecture
BLoC Architecture

Bloc bisa pake MVC
Getx bisa pake BLoc Architecutre

*/
import 'package:flutter/material.dart';

import '../../../../core.dart';

class QRatingField extends StatefulWidget {
  final String label;
  final double? value;
  final Function(double value)? onChanged;
  const QRatingField({
    Key? key,
    required this.label,
    this.value,
    this.onChanged,
  }) : super(key: key);

  @override
  State<QRatingField> createState() => _QRatingFieldState();
}

class _QRatingFieldState extends State<QRatingField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: const TextStyle(
              fontSize: 13.0,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          RatingBar.builder(
            initialRating: widget.value ?? 0,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            itemSize: 20.0,
            onRatingUpdate: (rating) {
              print(rating);
              if (widget.onChanged != null) {
                widget.onChanged!(rating);
              }
            },
          ),
          const SizedBox(
            height: 8.0,
          ),
        ],
      ),
    );
  }
}
