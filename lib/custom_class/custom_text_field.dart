import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class CustomTextField extends StatefulWidget {

  //create a variable
   final TextEditingController controller;
   final String hintText;
   final IconData prefixIcon;
   final TextInputType keyboardType;
   final bool obscureText;
   final String? Function(String?)? validator;
   final bool readOnly;
   final List<TextInputFormatter>? textInputFormatter;



    const CustomTextField({
    required this.controller,
    required this.hintText,
    required this.prefixIcon,
      this.keyboardType = TextInputType.text,
     this.obscureText = false, this.validator,
     this.readOnly = false,
      this.textInputFormatter,
    super.key});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool obscureText;


    @override
    void initState(){
      obscureText = widget.obscureText;
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        inputFormatters: widget.textInputFormatter ?? [],
          readOnly: widget.readOnly,
          cursorColor: Colors.black54,
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          obscureText: obscureText,
          validator:  widget.validator,
          style: const TextStyle(
            color: Colors.black54,
          ),
          decoration:  InputDecoration(
                filled: true,
             fillColor: Colors.white60,
             counterText: "",
              prefixIcon: Padding(
               padding: const  EdgeInsets.only(left: 12.0, right: 8.0),
                child: Container(
                  width: 1.0,
                  height: 1.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green.shade100,
                    ),
                  child: Center(
                    child: Icon(
                      widget.prefixIcon,
                         size: 15,
                       color: Colors.black,
                    ),
                  ),
                ),
              ),
              contentPadding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54, width: 1.0,),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black54,width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black54,width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black54,width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            hintText: widget.hintText,
             suffixIcon: widget.obscureText
                ? IconButton(
                  icon:  Icon(
                    obscureText ? Icons.visibility_off : Icons.visibility,
                   color: Colors.grey,
                  ),
               onPressed: (){
                    setState(() {
                       obscureText = !obscureText;
                    });
               },
             ):
             null,
              labelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.black38,
            letterSpacing: 1.0,
          ),
          ),
    );
  }
}
