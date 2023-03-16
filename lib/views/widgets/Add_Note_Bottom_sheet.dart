import 'package:flutter/material.dart';
import 'package:note_app/constant.dart';

import 'custom_botton.dart';
import 'custom_text_field.dart';

class AddNoteBottomsheet extends StatelessWidget {
  const AddNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 20),
            CustomTextField(hint: 'Title'),
            SizedBox(height: 16),
            CustomTextField(hint: 'Content', maxLines: 5),
            SizedBox(height: 16),
            CustomBotton(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
