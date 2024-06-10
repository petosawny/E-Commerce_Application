
import 'package:flutter/material.dart';

  class CustomButtonAuth extends StatelessWidget {
  final String? buttonName ;
final void Function()? onPressed ;

  const CustomButtonAuth({Key? key,required this.buttonName, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.lightBlue[300]
      ),
      child: MaterialButton(
      padding: EdgeInsets.symmetric(vertical: 10),
        // color: Colors.lightBlue[300],
        onPressed:onPressed ,
        child: Text("$buttonName" ,style:  const TextStyle(
            color: Colors.white ,
                fontSize: 18,
        ),),
      ),
    );
  }
}
