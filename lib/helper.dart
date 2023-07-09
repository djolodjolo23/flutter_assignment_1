import 'package:flutter/material.dart';

// Helper function for building the icon row
// This function is used in the main.dart file
Widget buildIconRow(IconData icon, String text, {bool isBold = false}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12.0),
    child: Row(
      children: [
        Icon(
          icon,
          size: 16.0,
          color: Colors.black,
        ),
        const SizedBox(
          width: 8.0,
        ),
        Text(text,
            style: TextStyle(
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal))
      ],
    ),
  );
}
