import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'costum_icon_note.dart';
import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
