import 'package:flutter/material.dart';

class Train extends StatelessWidget {
  TextEditingController yushan = TextEditingController();

  @override
  Widget build(BuildContext context) {
    yushan.text = 'www';
    return Container(
        child: Column(
      children: [
        Container(
          child: TextField(
            // onChanged: (text) {
            //   print(text);
            // },
            onSubmitted: (yu) {
              print(yu);
            },
            controller: yushan,
          ),
        ),
        Container(
          child: TextField(
            cursorColor: Colors.red,
            decoration: InputDecoration(),
          ),
        )
      ],
    ));
  }
}
