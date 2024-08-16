import 'package:flutter/material.dart';
import 'package:flutter_mine_exchange_project/configs/themes/theme_text.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: Colors.blue[900],
        borderRadius: const BorderRadius.vertical(top: Radius.circular(6))
      ),
      alignment: Alignment.center,
      child: 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(
              'EURGZ HARTLEYS',
              style: ThemeStyles.commonRobotoTheme
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 42.0),
              child: Text(
                'Jamie Mackie',
                style: ThemeStyles.commonRobotoTheme.copyWith(fontSize: 16,fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}