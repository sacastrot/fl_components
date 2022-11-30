import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? inputType;
  final bool obscureText;
  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.inputType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      autofocus: false,
      keyboardType: inputType,
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required';
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,

      decoration: InputDecoration(
        /*
         * 1. hintText: Texto de ayuda que aparece en el campo
         * 2. labelText: Texto que aparece en la parte superior del campo
         * 3. helperText: Texto de ayuda que aparece debajo del campo
         * 4. icon: Icono que aparece en la parte izquierda del campo
         * 5. suffixIcon: Icono que aparece en la parte derecha del campo
         *
         * Como estos argumentos son obtenidos en tiempo de ejecucion el constructuro de InputDecoration no puede ser constante
         */
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        icon: icon != null ? Icon(icon) : null,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
      ),
    );
  }
}
