import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'custom_app_bar.dart';
import 'custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 45,
          ),
          CustomAppBar(
            icon: Icons.check,
            title: 'Edit Note',
          ),
          SizedBox(
            height: 28,
          ),
          CustomTextField(
            hintText: 'title',
          ),
          CustomTextField(
            hintText: 'content . . . . .',
            maxLines: 8,
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
