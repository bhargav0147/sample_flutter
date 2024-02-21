import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({super.key});

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              size: 24,
              color: Colors.white,
            )),
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Hero(
          tag: 'stepper',
          child: Text(
            'Stepper',
            style: GoogleFonts.poppins(
              decoration: TextDecoration.none,
              textStyle: const TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: Stepper(
        
        currentStep: _currentStep,
        type: StepperType.vertical,
        onStepContinue: () {

          setState(() {
            if (_currentStep < 2) {
              _currentStep += 1;
            }
          });
        },
        onStepCancel: () {
          setState(() {
            if (_currentStep > 0) {
              _currentStep -= 1;
            }
          });
        },
        steps: <Step>[
          Step(

            title: const Text('Step 1'),
            content: const Text('This is step 1'),
            isActive: _currentStep >= 0,
          ),
          Step(
            title: const Text('Step 2'),
            content: const Text('This is step 2'),
            isActive: _currentStep >= 1,
          ),
          Step(
            title: const Text('Step 3'),
            content: const Text('This is step 3'),
            isActive: _currentStep >= 2,
          ),
        ],
        connectorColor: const MaterialStatePropertyAll(Colors.blue),

      ),
    ));
  }
}
