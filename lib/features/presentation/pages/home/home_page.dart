import 'package:effective_mobile/config/theme/app_colors.dart';
import 'package:effective_mobile/features/presentation/widgets/card_tile.dart';
import 'package:effective_mobile/features/presentation/widgets/row_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: AppColors.greyBg,
      appBar: AppBar(
        title: const Text(
          "Отель",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Slider
                  Container(
                    width: double.infinity,
                    height: 257,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://freepngimg.com/save/33386-hotel-clipart/492x369'),
                          fit: BoxFit.fill),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  //Rating
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    decoration: const BoxDecoration(
                        color: AppColors.yellow,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        )),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.star, color: AppColors.darkYellow),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          '5 Превосходно',
                          style: theme.textTheme.bodyMedium
                              ?.copyWith(color: AppColors.darkYellow),
                        ),
                      ],
                    ),
                  ),
                  //title
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Steigenberger Makadi",
                    style: theme.textTheme.bodyLarge,
                  ),
                  //address
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Madinat Makadi, Safaga Road, Makadi Bay, Египет",
                    style: theme.textTheme.bodySmall
                        ?.copyWith(color: AppColors.blue),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "от 134 673 ₽",
                        style: theme.textTheme.titleLarge),
                    TextSpan(
                      text: "за тур с перелётом",
                      style: theme.textTheme.bodyMedium
                          ?.copyWith(color: AppColors.textGrey),
                    ),
                  ]))
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Об отеле", style: theme.textTheme.bodyLarge),
                  const SizedBox(
                    height: 16,
                  ),
                  const Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      CardTile(title: "3-я линия"),
                      CardTile(title: "Платный Wi-Fi в фойе"),
                      CardTile(title: "30 км до аэропорта"),
                      CardTile(title: "1 км до пляжа"),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                      "Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!",
                      style: theme.textTheme.bodyMedium),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: const Color(0xffFBFBFC),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Column(
                      children: [
                        RowContainerWidget(),
                        SizedBox(
                          height: 20,
                        ),
                        RowContainerWidget(),
                        SizedBox(
                          height: 20,
                        ),
                        RowContainerWidget(),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
