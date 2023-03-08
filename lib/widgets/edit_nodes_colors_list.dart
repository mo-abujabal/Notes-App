import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../constents.dart';
import '../models/note_model.dart';
import 'colors_list_view.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int currentIndex = 0;
  @override
  void initState() {
    currentIndex = kcolors.indexOf(
      Color(widget.note.color),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        itemCount: kcolors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kcolors[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: kcolors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
