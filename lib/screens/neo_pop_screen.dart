import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neopop/widgets/buttons/neopop_tilted_button/neopop_tilted_button.dart';
import 'package:neopopbtn/screens/welcome_screen.dart';

class NeoPopScreen extends StatelessWidget {
  const NeoPopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/jpg/bg-img.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 40), // Space above the SvgPicture
              SvgPicture.asset(
                "assets/images/svg/cat-icon.svg",
                height: 430, // Adjust size as needed
                width: 430,
                fit: BoxFit.contain,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: const Color(0xFFF4EBA7),
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 30,
                      bottom: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          "Nickelfox Mario",
                          style: GoogleFonts.pressStart2p(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF21201E),
                            fontSize: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          "Collect coins, earn rewards, and unlock surprises in a pixelated world.",
                          style: GoogleFonts.pressStart2p(
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF21201E),
                            fontSize: 12,
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        NeoPopTiltedButton(
                          isFloating: true,
                          onTapUp: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const WelcomeScreen();
                              },
                            ));
                          },
                          decoration: const NeoPopTiltedButtonDecoration(
                            color: Color(0xFF000000),
                            plunkColor: Color(0xFF000000),
                            shadowColor: Color(0xFF624C42),
                            showShimmer: true,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 140.0,
                              vertical: 8,
                            ),
                            child: Text(
                              'Play Now!',
                              style: GoogleFonts.pressStart2p(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
