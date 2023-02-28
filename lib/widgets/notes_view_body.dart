import 'package:flutter/cupertino.dart';

import 'custom_app_bar.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: const [
        SizedBox(
          height: 50,
        ),
        CustomAppBar()
      ]),
    );
  }
}
