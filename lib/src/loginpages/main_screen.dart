import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginkit/src/loginpages/sign_in_five.dart';
import 'package:loginkit/src/loginpages/sign_in_one.dart';
import 'package:loginkit/src/loginpages/sign_in_two.dart';
import 'package:loginkit/src/loginpages/sign_in_three.dart';
import 'package:loginkit/src/loginpages/sign_in_four.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF60BB76),
        automaticallyImplyLeading: false, // This removes the back button
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'UI KIT',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                letterSpacing: 1.2,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0, bottom: 10),
        child: Column(
          children: [
            Image.asset(
              'assets/LOGINKIT.png', // Replace with the path to your PNG file
              height: 100,
              width: 180,
            ),
            const SizedBox(height: 10), // Space between text and grid
            // Grid of buttons
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 4 columns in the grid
                  crossAxisSpacing: 10, // Horizontal space between buttons
                  mainAxisSpacing: 10,
                  childAspectRatio: 2.6// Vertical space between buttons
                ),
                itemCount: 14, // 4x4 = 16 buttons
                itemBuilder: (context, index) {
                  String buttonText = 'LOGIN ${index + 1}';
                  return buildButton(
                    buttonText,
                    context,
                    () {
                      // Change the navigation logic here depending on the design
                      switch (index) {
                        case 0:
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignInOne(),
                            ),
                          );
                          break;
                        case 1:
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignInTwo(),
                            ),
                          );
                          break;
                        case 2:
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignInThree(),
                            ),
                          );
                          break;
                        case 3:
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignInFour(),
                            ),
                          );
                          break;
                        case 4:
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignInTen(),
                            ),
                          );
                          break;
                        default:
                          // Handle default cases if needed
                          break;
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget buildButton(String txt, BuildContext context, VoidCallback onTap) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(

        alignment: Alignment.center,
        height: size.height / 15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            width: 1.5,
            color: const Color(0xFF60BB76),
          ),
        ),
        child: Text(
          txt,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 13.0,
            color: const Color(0xFF60BB76),
            fontWeight: FontWeight.w800,
            height: 1.5,
          ),
        ),
      ),
    );
  }
}
