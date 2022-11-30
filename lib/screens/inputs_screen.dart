import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'name': 'Santiago',
      'lastname': 'Castro',
      'email': 'Santiago@email.com',
      'password': 'Thisismypass',
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and Forms'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,

          child: Column(
            children: [
              CustomInputField(
                formProperty: 'name',
                formValues: formValues,
                hintText: 'Enter your name',
                labelText: 'Name',
                helperText: 'Enter your name',
                icon: Icons.person,
                suffixIcon: Icons.accessibility_new,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                formProperty: 'lastname',
                formValues: formValues,
                hintText: 'Enter last name',
                labelText: 'Last Name',
                helperText: 'only last name',
                icon: Icons.person,
                suffixIcon: Icons.accessibility_new,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                formProperty: 'email',
                formValues: formValues,
                inputType: TextInputType.emailAddress,
                hintText: 'Enter email',
                labelText: 'email',
                icon: Icons.person,
                suffixIcon: Icons.accessibility_new,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                formProperty: 'password',
                formValues: formValues,
                obscureText: true,
                hintText: 'Enter password',
                labelText: 'password',
                icon: Icons.person,
                suffixIcon: Icons.accessibility_new,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    print(formValues);
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!formKey.currentState!.validate()) {
                      print('No validate form');
                      return;
                    }
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Save')),
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
