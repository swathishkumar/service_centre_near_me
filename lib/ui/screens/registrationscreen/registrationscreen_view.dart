import 'package:flutter/material.dart';
import 'package:service_centre_near_me/ui/screens/loginscreen/loginscreen_view.dart';
import 'package:service_centre_near_me/ui/screens/registrationscreen/registrationview_model.dart';
import 'package:service_centre_near_me/utils/validator.dart';
import 'package:stacked/stacked.dart';

class RegistrationscreenView extends StatelessWidget {
  const RegistrationscreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB5CFB7),
      body: ViewModelBuilder.nonReactive(
        builder: (context, viewModel, child) {
          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        validator: nameValidator,
                        controller: viewModel.uname,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Username',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: emailValidator,
                        controller: viewModel.email,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Email',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: passwordValidator,
                        controller: viewModel.pwd,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Password',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: (value) {
                          passwordConfirmValidator(value, value);
                        },
                        controller: viewModel.cpwd,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Confirm Password',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginscreenView(),
                                ));
                          },
                          child: Text('Register')),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('already have account?'),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginscreenView(),
                                    ));
                              },
                              child: Text('Login'))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
        viewModelBuilder: () {
          return RegistrationviewModel();
        },
      ),
    );
  }
}
