import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;

  final String? labelText;

  final IconData? iconData;

  final TextEditingController? mycontroller;

  final String? Function(String?)? valid;

  final bool? isNumber;

  final bool? obscureText;

  final void Function()? onTapicon;

  final TextInputType? keyboardType;

  const CustomTextFormField({Key? key,
    this.obscureText,
    this.isNumber,
    this.onTapicon,
    this.keyboardType,
    required this.hintText,
    required this.labelText,
    required this.iconData,
    required this.mycontroller,
    required this.valid,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: TextFormField(
        keyboardType: keyboardType,
        // keyboardType: isNumber==true ? TextInputType.number ,
        obscureText: obscureText == null || obscureText == false ? false : true,
        validator: valid,
        controller: mycontroller,
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text("$labelText")),
            suffixIcon: InkWell(onTap: onTapicon, child: Icon(iconData)),
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            )),
      ),
    );
  }
}
