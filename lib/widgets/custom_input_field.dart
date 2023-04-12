import 'package:flutter/material.dart';
class CustomInputField extends StatelessWidget {
    
    final String? hintText;
    final String? labelText;
    final String? helperText;
    final IconData? suffixIcon;
    final IconData? icon;
    final TextInputType? emailKeyboard;
    final bool obscureText;

    final String formProperty;
    final Map<String,String> formValues;



  const CustomInputField({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.suffixIcon, 
    this.icon, 
    this.emailKeyboard, 
    this.obscureText = false, 
    required this.formProperty, 
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      //initialValue: 'George R.R. Martin',
      keyboardType: emailKeyboard,// TECLADO P/ INGRESAR EMAILS
      obscureText: obscureText,
      textCapitalization: TextCapitalization.none,
      onChanged: ( value ) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Mínimo de 3 letras': null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        fillColor: Color.fromRGBO(217, 217, 217, 1), // set the background color
        filled: true,
        errorBorder: OutlineInputBorder(                      //!REVISAR ESTE ERRORBORDER NO FUNCA
            borderSide: BorderSide(color: Color.fromRGBO(69, 255, 44, 0.898), width: 0.2),
        ),
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //prefixIcon:Icon(Icons.verified,size: 30,) 
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon,size:30),
        icon: icon == null ? null : Icon(icon,size:30),//si el icono es nulo, sera nullo sino sera lo que le enviemos
        //SECCION DISEÑO DE CAJA DE TEXTO (BORDES)
         border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
  ),

         

      ),
    );
  }
}