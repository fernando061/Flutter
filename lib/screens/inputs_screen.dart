import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String,String> formValues = {
      'first_name' : 'Fernando',
      'last_name'  : 'Rojo',
      'email'      : 'rojofernando296@gmail.com',
      'password'   : 'luffy0313',
      'role'       : 'admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms', style: TextStyle(color: AppTheme.textColor),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(labelText: 'Nombre',hintText: 'Nombre de usuario', formProperty: 'first_name', formValues: formValues,),
                const SizedBox(height: 30,),
                CustomInputField(labelText: 'Apellido',hintText: 'Apellido del usuario', formProperty: 'last_name', formValues: formValues,),
                const SizedBox(height: 30,),
                CustomInputField(labelText: 'Correo',hintText: 'Correo del usuario',keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30,),
                CustomInputField(labelText: 'Contrasena',hintText: 'Contrasena del usuario',obscureText: true, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 30,),
                DropdownButtonFormField<String>(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(value: 'Admin',child: Text('Admin')),
                    DropdownMenuItem(value: 'Superuser',child: Text('Superuser')),
                    DropdownMenuItem(value: 'Developer',child: Text('Developer')),
                    DropdownMenuItem(value: 'Jr Deve;oper',child: Text('Jr. Developer')),

                  ],
                  onChanged: (value){
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  }
                ),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if(!myFormKey.currentState!.validate()) return;
                    print(formValues);
                  }, 
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'),),
                  )
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
