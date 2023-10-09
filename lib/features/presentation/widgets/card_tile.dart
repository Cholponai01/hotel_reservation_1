import 'package:effective_mobile/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  final String title;
  const CardTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: ShapeDecoration(
        color: const Color(0xffFBFBFC),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Text(title,
          textAlign: TextAlign.center,
          style:
              theme.textTheme.bodyMedium?.copyWith(color: AppColors.textGrey)),
    );
  }
}
