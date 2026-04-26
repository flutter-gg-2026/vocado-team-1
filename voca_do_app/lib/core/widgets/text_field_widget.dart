import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.controller,
    required this.label,
    this.isPassword = false,
    this.validator,
  });
  final TextEditingController controller;
  final String label;
  final bool isPassword;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(label),
          TextFormField(
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            validator: validator,
            controller: controller,
            obscureText: isPassword,
            decoration: InputDecoration(
              hintText: "Enter $label Here",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
