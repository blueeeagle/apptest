import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(

      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey,
        ),
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(top: 6),
        hintText: 'Search Influencer',


      ),
    );
  }
}
