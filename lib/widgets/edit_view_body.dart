import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes%20cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_list_view.dart';

import '../constents.dart';
import 'custom_app_bar.dart';
import 'custom_text_field.dart';
import 'edit_nodes_colors_list.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fechAllNotes();
            },
            icon: Icons.check,
            title: 'Edit Note',
          ),
          const SizedBox(
            height: 28,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.note.title,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              subTitle = value;
            },
            hintText: widget.note.subTitle,
            maxLines: 8,
          ),
          const SizedBox(
            height: 25,
          ),
          EditNoteColorsList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}

