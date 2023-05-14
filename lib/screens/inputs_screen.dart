import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'Tavo',
      'lastname': 'Zamudio',
      'email': 'tavo@google.com',
      'password': '123456',
      'role': 'Admin'
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and forms'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              CustomInputField(
                  labelText: 'Nombre',
                  hinText: 'Nombre del usuario',
                  formProperty: 'first_name',
                  formValues: formValues),
              const SizedBox(height: 30),
              CustomInputField(
                labelText: 'Apellido',
                hinText: 'Apellido del usuario',
                formProperty: 'lastname',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              CustomInputField(
                labelText: 'Correo',
                hinText: 'Correo del usuario',
                keyboardType: TextInputType.emailAddress,
                formProperty: 'email',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              CustomInputField(
                labelText: 'Contraseña',
                hinText: 'Contraseña del usuario',
                obscureText: true,
                formProperty: 'password',
                formValues: formValues,
              ),
              const SizedBox(height: 30),
              DropdownButtonFormField<String>(
                items: const [
                  DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                  DropdownMenuItem(
                      value: 'Superuser', child: Text('Superuser')),
                  DropdownMenuItem(
                      value: 'Developer', child: Text('Developer')),
                  DropdownMenuItem(
                      value: 'Jr. Developer', child: Text('Jr. Developer')),
                ],
                onChanged: (value) {
                  print(value);
                  formValues['role'] = value ?? 'Admin';
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no valido');
                      return;
                    }

                    print(formValues);
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar'))))
            ],
          ),
        ),
      )),
    );
  }
}
