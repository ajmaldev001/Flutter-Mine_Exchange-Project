import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableCardsTextWidget extends StatelessWidget {
  final String text;
  final double? fontSize;
  const ReusableCardsTextWidget({
    super.key, 
    required this.text,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text.isNotEmpty ? text : 'NA',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.roboto(
          fontSize: fontSize ?? 14,
          fontWeight: FontWeight.w500,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}