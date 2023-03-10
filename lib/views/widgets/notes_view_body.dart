import 'package:flutter/material.dart';
import 'Notes_List_View.dart';
import 'custom_app_bar.dart';


class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          //NoteItem(),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}

