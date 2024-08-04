

import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {

  final int count;
  final String phrase;
  final VoidCallback onIncrement;
  final VoidCallback onReset;

  const CustomIconButton({
    super.key,
    required this.count,
    required this.phrase,
    required this.onIncrement,
    required this.onReset,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // العداد
        Container(
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.shade200.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          padding: const EdgeInsets.all(10.0),
          child: Text(
            '$count',
            textAlign: TextAlign.right,
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        const SizedBox(width: 10),
        // الأذكار
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.green.shade300.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            padding: const EdgeInsets.all(10.0),
            child: Text(
              phrase,
              textAlign: TextAlign.right,
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
        ),
        const SizedBox(width: 10),
        // أيقونة إضافة
        Container(
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.shade300.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_upward, size: 30, color: Colors.blue),
            onPressed: onIncrement,
          ),
        ),
        const SizedBox(width: 10),
        Container(
          decoration: BoxDecoration(
            color: Colors.red.shade50,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.red.shade200.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: IconButton(
            icon: const Icon(Icons.refresh, size: 30, color: Colors.red),
            onPressed: onReset,
          ),
        ),
      ],
    );
  }
}