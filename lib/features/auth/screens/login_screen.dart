import 'package:flutter/material.dart';
import 'package:pure_pick/features/auth/screens/create_acount_screen.dart';
import 'package:pure_pick/features/auth/widgets/custom_text_field.dart';
import 'package:pure_pick/core/custom%20widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Image.asset(
                  "assets/images/frame.jpg",
                  fit: BoxFit.contain,
                ),
              ),
            ),

            SizedBox(height: 24),
            Text(
              "Welcome Back",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Sign in to continue shopping",
              style: TextStyle(color: Color(0xff78716C), fontSize: 16),
            ),
            SizedBox(height: 34),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Email Address",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
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
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Password",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 8),
            CustomTextField(
              height: 56,
              width: 356,
              hintText: "Enter your password",
              prefixIcon: Icons.lock,
              obscureText: true,
              suffixIcon: Icons.visibility,
              keyboardType: TextInputType.visiblePassword,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Color(0xff10B981)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            CustomButtonWithIcon(
              height: 56,
              width: 356,
              text: 'Sign In',
              onPressed: () {},
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                Expanded(
                  child: Container(height: 1, color: Colors.grey.shade400),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "OR",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(height: 1, color: Colors.grey.shade400),
                ),
              ],
            ),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue, width: 3),
                    ),
                    child: const Center(
                      child: Text(
                        "F",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 30),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.red, width: 3),
                    ),
                    child: const Center(
                      child: Text(
                        "G",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Color(0xff78716C)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const CreateAcountScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Sign Up",
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
    );
  }
}
