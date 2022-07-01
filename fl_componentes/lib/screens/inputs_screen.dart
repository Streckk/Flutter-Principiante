import 'package:fl_componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
   InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String,String> formValues ={
      'first_name':'Fernando',
      'last_name' :'Fernando',
      'Email'     :'Fernando@google.com',
      'password'  :'123456',
      'role'      : 'Admin'
    };
    return  Scaffold(
      appBar: AppBar(
        title:  Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Form(
                key: myFormKey,
              child: Column(
                children:  [
                     CustomInputField(labelText: 'Nombre',hintText: 'Nombre del usuario', formProperty: 'first_name', formValues: formValues,),
                     const SizedBox(height: 30,),
                      CustomInputField(labelText: 'Apellido',hintText: 'Apellido del usuario', formProperty: 'last_name', formValues: formValues,),
                      const SizedBox(height: 30,),
                      CustomInputField(labelText: 'Correo',hintText: 'Correo del usuario',textInputType: TextInputType.emailAddress, formProperty: 'Email', formValues: formValues,),
                     const SizedBox(height: 30,),
                      CustomInputField(labelText: 'Contraseña',hintText: 'Contraseña del usuario',obscureText: true, formProperty: 'password', formValues: formValues,),
                      const SizedBox(height: 30,),

                      DropdownButtonFormField<String>(
                        items: const [
                          DropdownMenuItem(value: 'Admin',child: Text('Admin'),),
                          DropdownMenuItem(value: 'SuperUser',child: Text('SuperUser'),),
                          DropdownMenuItem(value: 'Developer',child: Text('Developer'),),
                          DropdownMenuItem(value: 'Jr. Developer',child: Text('Jr. Developer'),),
                          ], 
                        onChanged: (value){
                          formValues['role']=value ?? 'Admin';
                        }
                        ),
            
                     ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());

                        if(!myFormKey.currentState!.validate()){
                          return;
                        }
                        print(formValues);
                      }, 
                      child:  const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar')))
                      )
                ],
              ),
            ),
          ),
      ),
    );
  }
}


