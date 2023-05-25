import 'package:flutter/material.dart';
import 'package:learn_flutter/util/buttons.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;

  final VoidCallback onSave;
  final VoidCallback onCancel;

  const DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.purple[300],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // text input
            TextField(
              controller: controller,
              decoration: const InputDecoration(hintText: "Add a new task"),
            ),

            // buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(width: 8),
                // save button
                Buttons(text: 'Save', onPressed: onSave),

                //cancel button
                Buttons(text: 'Cancel', onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
