import 'package:flutter/material.dart';
import 'package:food_app/components/mybutton.dart';
import 'package:food_app/components/mytextfielf.dart';

class Registerpage extends StatefulWidget {
  final void Function()? onTap;
  const Registerpage({super.key, required this.onTap});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmpasswordcontroller =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Icon(
                Icons.lock_open_rounded,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(height: 25),
              //message app slogan
              Text(
                "Create an account",
                style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(height: 25),
              //email text field
              Mytextfiled(
                  controller: emailcontroller,
                  hinttext: "Email",
                  obscuretext: false),
              const SizedBox(height: 10),
              //passwordtextfiled
              Mytextfiled(
                  controller: passwordcontroller,
                  hinttext: "Password",
                  obscuretext: true),
              const SizedBox(height: 10),

              const SizedBox(height: 10),
              //confirmpasswordtextfiled
              Mytextfiled(
                  controller: confirmpasswordcontroller,
                  hinttext: "confirm Password",
                  obscuretext: true),
              const SizedBox(height: 10),
              //signin button
              Mybutton(
                text: "sign up",
                onTap: () {},
              ),
              //not a menber
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Registered?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Login now?",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
