import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transcard/page/nav.dart';
import 'package:transcard/provider/auth_provider.dart';
import 'package:transcard/screens/home_screen.dart';
import 'package:transcard/screens/register_screen.dart';
import 'package:transcard/widgets/custom_button.dart';
import 'package:provider/provider.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/Holo.png"), fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/trans.png",
                    height: 500,
                  ),
                  // const SizedBox(height: 40),

                  Text("Экономить \nденьги, Легко",
                      style: GoogleFonts.montserrat(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),

                  // const Text(
                  //   "Экономить \nденьги, Легко",
                  //   style: TextStyle(
                  //     fontSize: 22,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  // const SizedBox(height: 10),
                  // Text("Никогда не было лучшего времени, чем сейчас, чтобы начать.",
                  //     style: GoogleFonts.montserrat(
                  //         fontSize: 14,
                  //         fontWeight: FontWeight.bold,
                  //         color: Colors.white)),
                  // const Text(
                  //   "Никогда не было лучшего времени, чем сейчас, чтобы начать.",
                  //   style: TextStyle(
                  //     fontSize: 14,
                  //     color: Colors.black38,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  // const SizedBox(height: 20),
                  // custom button
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: CustomButton(
                      onPressed: () async {
                        if (ap.isSignedIn == true) {
                          await ap.getDataFromSP().whenComplete(
                                () => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Nav(),
                                  ),
                                ),
                              );
                        } else {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterScreen(),
                            ),
                          );
                        }
                      },
                      text: "Поехали",
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
