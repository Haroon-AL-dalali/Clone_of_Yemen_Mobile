import 'package:flutter/material.dart';

Future<dynamic> navigateAndfinished(BuildContext context, Widget screen) {
  return Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => screen));
}

Future<dynamic> navigateTo(BuildContext context, Widget screen) {
  return Navigator.push(
      context, MaterialPageRoute(builder: (context) => screen));
}

Widget defaultButton(
    {required double width,
    required Function() function,
    required String label,
   
    Color textColor = Colors.white,
    double radius = 8.0}) {
  return Container(
      width: width,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 180, 44, 76), borderRadius: BorderRadius.circular(radius)),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          label,
          style: TextStyle(
              color: textColor, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ));
}

// General Form

Widget defaultForm({
  required TextEditingController controller,
  required TextInputType type,
  required IconData prefixIcon,
  IconData? sufixIcon,
  bool validate = false,
  String validationMessage = 'This field is required',
  bool isPassword = false,
  required String label,
  required Function() suffixIconPressed,
  Function()? onSubmit,
  Color borderColor = Colors.white,
}) {
  return TextFormField(
    controller: controller,
    obscureText: isPassword == true ? true : false,
    keyboardType: type,
    validator: validate == true
        ? (value) {
            if (value!.isEmpty) {
              return validationMessage;
            }
            if (isPassword == true && value.length < 4) {
              return 'The Password is too short';
            }
            return null;
          }
        : null,
    onTap: onSubmit,
    decoration: InputDecoration(
      prefixIcon: Icon(prefixIcon),
      suffixIcon: sufixIcon != null
          ? GestureDetector(
              onTap: suffixIconPressed,
              child: Icon(sufixIcon),
            )
          : null,
      labelText: label,
      border: OutlineInputBorder(
          borderSide: BorderSide(style: BorderStyle.solid, color: borderColor)),
    ),
  );
}

messanger(
    {required BuildContext context,
    required String message,
    bool status = true}) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    behavior: SnackBarBehavior.floating,
    backgroundColor: status ? Colors.white : Colors.redAccent,
  ));
}
