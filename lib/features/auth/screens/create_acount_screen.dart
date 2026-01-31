import 'package:flutter/material.dart';
import 'package:pure_pick/core/custom%20widgets/custom_button.dart';
import 'package:pure_pick/features/auth/screens/login_screen.dart';
import 'package:pure_pick/features/auth/widgets/custom_text_field.dart';

class CreateAcountScreen extends StatefulWidget {
  const CreateAcountScreen({super.key});

  @override
  State<CreateAcountScreen> createState() => _CreateAcountScreenState();
}

class _CreateAcountScreenState extends State<CreateAcountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'Create Account',
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Join PurePick for fresh organic\nproduce',
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xff78716C),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "First Name",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 8),
                      CustomTextField(
                        height: 56,
                        width: 160,
                        hintText: "first name",
                        keyboardType: TextInputType.name,
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Last Name",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 8),
                      CustomTextField(
                        height: 56,
                        width: 160,
                        hintText: "last name",
                        keyboardType: TextInputType.name,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                "Email Address",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8),
              CustomTextField(
                height: 56,
                width: 356,
                hintText: "Enter your email",
                prefixIcon: Icons.mail,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              Text(
                "Password",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8),
              CustomTextField(
                height: 56,
                width: 356,
                hintText: "Creata a password",
                obscureText: true,
                suffixIcon: Icons.visibility,
                prefixIcon: Icons.lock,
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 16),
              Text(
                "Confirm Password",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8),
              CustomTextField(
                height: 56,
                width: 356,
                hintText: "Confirm your password",
                obscureText: true,
                suffixIcon: Icons.visibility,
                prefixIcon: Icons.lock,
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 35),
              CustomButtonWithIcon(
                height: 56,
                width: 356,
                text: 'Create Account',
                onPressed: () {},
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(color: Color(0xff78716C)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const LoginScreen()),
                      );
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Color(0xff10B981),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
