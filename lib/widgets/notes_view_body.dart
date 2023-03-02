import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'costum_icon_note.dart';
import 'custom_app_bar.dart';
import 'notes_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 45,
          ),
          CustomAppBar(icon: Icons.search, title: 'Notes',),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
