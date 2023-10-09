import 'package:flutter/material.dart';

class RowContainerWidget extends StatelessWidget {
  const RowContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.abc),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Удобства",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "Самое необходимое",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: const Color(0xff828696),
                      ),
                ),
              ],
            )
          ],
        ),
        const Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
