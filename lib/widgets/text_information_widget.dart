import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/colors.dart';

class TextInformation extends StatelessWidget {
  const TextInformation({
    super.key,
    this.smallScreen = false,
  });
  final bool smallScreen;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Ops, esta página não foi encontrada",
            textAlign: TextAlign.center,
            style: GoogleFonts.outfit(
              fontSize: 40,
              color: const Color(0xffD6D6F2),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Parece que você se perdeu... Tente voltar para a página anterior ou acessar a home.",
            textAlign: TextAlign.center,
            style: GoogleFonts.outfit(
              fontSize: 20,
              color: const Color(0xffD6D6F2),
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            crossAxisAlignment: smallScreen
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
            mainAxisAlignment: smallScreen
                ? MainAxisAlignment.start
                : MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 44,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.blueDark,
                  ),
                  onPressed: () {},
                  child: Text(
                    "Voltar".toUpperCase(),
                    style: GoogleFonts.outfit(
                      fontSize: 14,
                      color: const Color(0xffE2E2F5),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              SizedBox(
                height: 44,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.blueDark,
                  ),
                  onPressed: () {},
                  child: Text(
                    "ir para a home".toUpperCase(),
                    style: GoogleFonts.outfit(
                      fontSize: 14,
                      color: const Color(0xffE2E2F5),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
