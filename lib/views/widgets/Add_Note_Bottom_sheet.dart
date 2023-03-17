import 'package:flutter/material.dart';

import 'custom_botton.dart';
import 'custom_text_field.dart';

class AddNoteBottomsheet extends StatelessWidget {
  const AddNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
 
  final GlobalKey<FormState> formkey = GlobalKey();
  
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  
  String? title, subtitle;
 
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 20),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          const SizedBox(height: 16),
          CustomTextField(
              onSaved: (value) {
                subtitle = value;
              },
              hint: 'Content',
              maxLines: 5),
          const SizedBox(height: 16),
          CustomBotton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
