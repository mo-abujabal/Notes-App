import 'package:flutter/material.dart';

import '../views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 16,
          bottom: 16,
          left: 8,
        ),
        decoration: BoxDecoration(
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Text(
                'Build your career with tharwat samy',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 16,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 36,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
              ),
              child: Text(
                'May 21 ,2022',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
