import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //Image card
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(
                  "assets/images/car.jpg",
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
          
              SizedBox(height: 20),
          
              //Title
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(text: "CHARGE"),
                    TextSpan(
                      text: " SMARTER. \n",
                      style: TextStyle(color: Colors.green),
                    ),
                    TextSpan(text: "DRIVE "),
                    TextSpan(
                      text: "FURTHER.",
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              //Subtitle
              Text(
                "Locate relaiable EV Stations instantly and enjoy a seamless charging experience from start to finish. ",
                style: TextStyle(
                  fontSize: 16, 
                  color: Colors.black54),
              ),
          
              SizedBox(height: 40,),
              //Button
              SizedBox(
                width: double.infinity,
                height: 44,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the next page or perform any action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text(
                    "Get Started",
                    style: TextStyle(fontSize: 18, color: Colors.white),
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
