import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatefulWidget {
  String? hint;
  String? label;
  String? error;
  TextInputType textInputType;
  bool? isPassword, isEmail, isPhone, isPass, isDisable;
  bool readonly;
  TextEditingController? controller = TextEditingController();
  Function()? onTab;

  TextFieldWidget(this.hint, this.label, String this.error,
      {Key? key,
      bool this.isPassword = false,
      bool this.isEmail = false,
      bool this.isPhone = false,
      bool this.isPass = false,
      this.readonly = false,
      bool this.isDisable = true,
      this.onTab,
      this.textInputType = TextInputType.text,
      this.controller})
      : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
       enabled: widget.isDisable,
      validator: widget.isEmail == true
          ? (value) {
              return validateEmail(value!);
            }
          : widget.isPhone == true
              ? (value) {
                  return validateMobile(value);
                }
              : widget.isPass == true
                  ? (value) {
                      return validatePassword(value);
                    }
                  : (value) {
                      if (value!.isEmpty) {
                        return " ${widget.error}";
                      } else if (value.length > 200) {
                        return "Can't be greater than 200 character ";
                      }
                      return null;
                    },

      cursorColor: Theme.of(context).primaryColor,
      controller: widget.controller,
      autofocus: false,
      
      showCursor: true,
      textAlign: TextAlign.start,
      obscureText: widget.isPass == true ? _obscureText : false,
      obscuringCharacter: '*',
      keyboardType: widget.textInputType,
      decoration: InputDecoration(
contentPadding: const EdgeInsets.symmetric(horizontal:10),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
              color: Theme.of(context)
                  .inputDecorationTheme
                  .enabledBorder!
                  .borderSide
                  .color),
        ),
        suffixIcon: widget.isPass == true
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                  color: Theme.of(context).primaryColor,
                ),
              )
            : const SizedBox(
                height: 0,
                width: 0,
              ),
        enabledBorder: const  OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: widget.isDisable == true
                  ? Colors.red
                  : Theme.of(context).primaryColor,
              width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        hintStyle: const TextStyle(fontSize: 14),


        hintText: widget.hint,
        helperStyle: const TextStyle(fontSize: 12),
        border: InputBorder.none,
      ),
    );
  }

  String? validateMobile(String? value) {
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = RegExp(patttern);
    if (value!.isEmpty) {
      return 'Please enter mobile number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    } else if (value.length > 12) {
      return 'length cant be greater than 12';
    }
    return null;
  }

  String? validateEmail(String value) {
    if (RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value)) {
      return null;
    } else {
      return 'Please Enter valid Email';
    }
  }

  String? validatePassword(String? value) {
    if (value!.length >= 6) {
      return null;
    } else {
      return 'password must be at least 6 characters';
    }
  }
}





