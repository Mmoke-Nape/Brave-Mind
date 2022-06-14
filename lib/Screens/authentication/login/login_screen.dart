import 'package:brave_mind_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/routes.dart';
import '../../../widgets/signup_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: size.height * .3,
              width: size.width,
              decoration: const BoxDecoration(
                color: AppColors.primaryBlue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  Image.asset(
                    'assets/images/logos/white-logo-new.png',
                    height: 100,
                    fit: BoxFit.fitHeight,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Brave Mind',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * .7,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(height: size.height * .06),
                    Text(
                      'Login to procced',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(color: Colors.black, fontSize: 24),
                    ),
                    SizedBox(height: size.height * .04),
                    TextFormField(
                      // controller: emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        labelText: 'Email',
                        prefixIcon: const Icon(Icons.email),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      // controller: passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        labelText: 'Password',
                        prefixIcon: const Icon(Icons.lock),
                        // suffixIcon: const Icon(Icons.red_eye)
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                    // if (isSignupRoute) const SizedBox(height: 10),
                    SizedBox(height: size.height * .03),
                    SignupButton(
                      text: 'Login',
                      press: () {},
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Get.offAndToNamed(AppRoutes.sigupScreen);
                      },
                      child: RichText(
                        textAlign: TextAlign.start,
                        text: const TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: "Don't have an account? ",
                              style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(
                              text: 'Signup',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.primaryBlue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * .05),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
