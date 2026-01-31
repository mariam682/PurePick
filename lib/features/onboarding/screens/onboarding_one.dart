import 'package:flutter/material.dart';
import 'package:pure_pick/features/auth/screens/login_screen.dart';
import 'package:pure_pick/features/onboarding/screens/onboarding_two.dart';
import 'package:pure_pick/core/custom%20widgets/custom_button.dart';

class OnboardingOne extends StatefulWidget {
  const OnboardingOne({super.key});

  @override
  State<OnboardingOne> createState() => _OnboardingOneState();
}

class _OnboardingOneState extends State<OnboardingOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 256,
                    height: 256,
                    decoration: BoxDecoration(
                      color: const Color(0xff10B981),
                      borderRadius: BorderRadius.circular(9999),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset(
                        "assets/images/Image.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(height: 55),
                  Text(
                    "Fresh From Farms",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 17),
                  Text(
                    "Get the freshest organic produce \n delivered straight from local farms to \n your doorstep.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 24,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Color(0xff10B981),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Color(0xffD6D3D1),
                          borderRadius: BorderRadius.circular(9999),
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Color(0xffD6D3D1),
                          borderRadius: BorderRadius.circular(9999),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  CustomButtonWithIcon(
                    width: 296,
                    height: 56,
                    text: 'Next',
                    icon: Icons.arrow_forward,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const OnboardingTwo(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            Positioned(
              top: 30,
              right: 30,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const LoginScreen()),
                  );
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
