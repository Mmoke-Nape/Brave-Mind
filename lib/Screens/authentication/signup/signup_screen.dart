import 'package:brave_mind_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/routes.dart';
import '../../../widgets/signup_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final List<String> _mentorItems = ['Mentor', 'Mentee'];
  String? _mentorValue = 'Mentor';

  final List<String> _campusItems = ['Bedfordview', 'Mentee'];
  String? _campusValue = 'Bedfordview';

  final List<String> _genderItems = ['Male', 'Female'];
  String? _genderValue = 'Male';

  final List<String> _studyItems = ['IT', 'Law'];
  String? _studyValue = 'IT';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: size.height * .27,
                width: size.width,
                padding: const EdgeInsets.symmetric(vertical: 20),
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
                    // const SizedBox(height: 30),
                    Expanded(
                      flex: 3,
                      child: Image.asset(
                        'assets/images/logos/white-logo-new.png',
                        // height: 100,
                        // fit: BoxFit.fitHeight,
                      ),
                    ),
                    // const SizedBox(height: 10),
                    Expanded(
                      child: Text(
                        'Brave Mind',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // height: size.height * .7,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Signup',
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: Colors.black, fontSize: 24),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        // controller: emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelText: 'Name',
                          prefixIcon: const Icon(Icons.person),
                        ),
                        keyboardType: TextInputType.name,
                      ),
                      const SizedBox(height: 10),
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
                      const SizedBox(height: 10),
                      TextFormField(
                        // controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelText: 'Student Number',
                          prefixIcon: const Icon(Icons.security),
                          // suffixIcon: const Icon(Icons.red_eye)
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                      const SizedBox(height: 10),
                      //Mentor drop down button
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(color: Colors.grey)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(color: Colors.grey)),
                        ),
                        items: _mentorItems
                            .map(
                              (item) => DropdownMenuItem<String>(
                                  child: Text(item), value: item),
                            )
                            .toList(),
                        hint: const Text('Mentor/Mentee'),
                        onChanged: (item) =>
                            setState(() => _mentorValue = item),
                      ),
                      const SizedBox(height: 10),
                      //Campus drop down button
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(color: Colors.grey)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(color: Colors.grey)),
                        ),
                        items: _campusItems
                            .map(
                              (item) => DropdownMenuItem<String>(
                                  child: Text(item), value: item),
                            )
                            .toList(),
                        hint: const Text('Campus'),
                        onChanged: (item) =>
                            setState(() => _campusValue = item),
                      ),
                      const SizedBox(height: 10),
                      //Gender drop down button
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(color: Colors.grey)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(color: Colors.grey)),
                        ),
                        items: _genderItems
                            .map(
                              (item) => DropdownMenuItem<String>(
                                  child: Text(item), value: item),
                            )
                            .toList(),
                        hint: const Text('Gender'),
                        onChanged: (item) =>
                            setState(() => _genderValue = item),
                      ),
                      const SizedBox(height: 10),
                      //Field of study drop down button
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(color: Colors.grey)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(color: Colors.grey)),
                        ),
                        items: _studyItems
                            .map(
                              (item) => DropdownMenuItem<String>(
                                  child: Text(item), value: item),
                            )
                            .toList(),
                        hint: const Text('Field of study'),
                        onChanged: (item) => setState(() => _studyValue = item),
                      ),

                      const SizedBox(height: 20),
                      SignupButton(
                        text: 'Signup',
                        press: () => Get.offNamed(AppRoutes.homeScreen),
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Get.offAndToNamed(AppRoutes.loginScreen);
                        },
                        child: RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "Have an account? ",
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Login',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primaryBlue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
