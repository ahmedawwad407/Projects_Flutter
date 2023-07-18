import 'package:f_project/modules/bmi_app/bmi/bmiCalculater.dart';
import 'package:f_project/modules/shope_app/login/Shop_login_screen.dart';
import 'package:f_project/shared/components/components.dart';
import 'package:flutter/material.dart';

class ShopRegisterScreen extends StatelessWidget {



  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Salla'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,// not apply -> solution center widget
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Register',
                      style: Theme.of(context).textTheme.headline3
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  defaultTextFormField(
                      prefixIcon: Icons.email,
                      label: 'email',
                      type: TextInputType.emailAddress,
                      // validate: (value) {
                      //   if (value.isEmpty) {
                      //     return 'Field must not Empty';
                      //   } else {
                      //     return null;
                      //   }
                      // },
                      controller: emailController),
                  SizedBox(
                    height: 10.0,
                  ),
                  defaultTextFormField(
                    prefixIcon: Icons.lock,
                    suffixIcon: isShow ? Icons.visibility : Icons.visibility_off,
                    label: 'password',
                    type: TextInputType.visiblePassword,
                    // validate: (value) {
                    //   if (value.isEmpty) {
                    //     return 'Field must not Empty';
                    //   } else {
                    //     return null;
                    //   }
                    // },
                    isObscure: isShow,
                    suffixPressed: () {
                    //  cubit.changeShowIcon();
                    },
                    controller: passwordController,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),defaultButton(
                      // width: 200.0,
                      // color: Colors.green,
                      // isUpperCase: false,
                      function: () {
                        if (formKey.currentState!.validate()) {
                          print(emailController.text);
                          print(passwordController.text);
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) =>ShopLoginScreen()
                              )
                          );
                        }

                      },
                      text: 'register'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
