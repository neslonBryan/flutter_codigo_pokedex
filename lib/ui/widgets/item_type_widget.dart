import 'package:flutter/material.dart';

class ItemTypeWidget extends StatelessWidget {
  String text;
  ItemTypeWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 4.0,
        right: 12.0,
        top: 4.0,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 14,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.04),
                offset: const Offset(4, 4),
                blurRadius: 12.0)
          ]),
    );
  }
}
