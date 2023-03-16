import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class AddNoteBottomsheet extends StatelessWidget {
  const AddNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(height: 20),
          CustomTextField(hint: 'Title'),
          SizedBox(height: 16),
          CustomTextField(hint: 'Content', maxLines: 5)
        ],
      ),
    );
  }
}
