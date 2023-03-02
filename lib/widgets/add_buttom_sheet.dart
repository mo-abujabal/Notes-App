import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_buttom.dart';
import 'custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
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
          CustomButton(),
        ],
      ),
    );
  }
}
