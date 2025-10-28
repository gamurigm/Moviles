import 'package:flutter/material.dart'; 


class Input extends StatelessWidget{
  final TextEditingController controller;
  final String label;  

  const Input({
    super.key,
    required this.controller,
    required this.label,
  });


  @override

  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        )
      ),
      keyboardType: TextInputType.number,
    );
  }
}
