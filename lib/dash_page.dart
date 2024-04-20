import 'package:admin_panel/reporting_page.dart';
import 'package:admin_panel/show_snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'custom_text_field.dart';
import 'cutom_botton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static String id = "login page";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email;
  String? password;
  bool isLoading = false;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: formKey,
            child: ListView(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Image.asset(
                  "assets/images/download (1).jpg",
                  height: 100,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.black38,
                      ),
                    ),
                    SizedBox(
                      height: 75,
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      "LOGIN",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomFormTextField(
                  onChange: (data) {
                    email = data;
                  },
                  hintText: "Email",
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomFormTextField(
                  onChange: (data) {
                    password = data;
                  },
                  hintText: "Password",
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      isLoading = true;
                      setState(() {});
                      try {
                        await loginUser();
                        if (!context.mounted) return;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReportingPage(),
                          ),
                        );
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          showSnackBar(context, "user-not-found");
                        } else if (e.code == 'wrong-password') {
                          showSnackBar(context, "wrong-password");
                        }
                      } catch (e) {
                        print(e);
                        showSnackBar(context, "There was an error");
                      }
                      isLoading = false;
                      setState(() {});
                    } else {}
                  },
                  text: "Login",
                ),
                const SizedBox(
                  height: 10,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> loginUser() async {
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email!, password: password!);
  }
}
