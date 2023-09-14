import 'package:flutter/material.dart';


class InputFieldWidget extends StatelessWidget {
  String? hintText;
  double width, height;
  Widget? iconRight;
  InputFieldWidget(
      {Key? key,
      this.hintText,
      required this.width,
      required this.height,
      this.iconRight,
    })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey,fontSize: 20),
            suffixIcon: iconRight ?? null,
            suffixIconColor: Colors.grey,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: const BorderSide(color: Colors.grey)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.grey)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.grey)),
            filled: true,
          ),
        ));
  }
}
