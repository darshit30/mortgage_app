import 'package:flutter/material.dart';

Widget textField(
    {required String title,
    required TextEditingController controller,
    required String hintText}) {
  return Column(
    children: [
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                //borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15)),
            hintText: hintText,
          ),
        ),
      )
    ],
  );
}

Widget result({
  required String title,
  required double amount,
}) {
  return ListTile(
    title: Text(
      title,
      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
    ),
    trailing: Text(amount.toStringAsFixed(2)),
  );
}
