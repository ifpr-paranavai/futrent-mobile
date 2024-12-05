import 'package:flutter/material.dart';
import 'package:futrent_mobile/shared/components/onboarding/onboarding_dot_navigation.dart';
import 'package:futrent_mobile/shared/components/onboarding/onboarding_next_button.dart';
import 'package:futrent_mobile/shared/components/onboarding/onboarding_skip.dart';
import 'package:futrent_mobile/shared/view/onboarding/onboarding_controller.dart';
import 'package:futrent_mobile/shared/view/onboarding/onboarding_page_item.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
        backgroundColor: const Color.fromRGBO(0, 115, 206, 1),
        body: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: const [
                OnBoardingPageItem(
                  image: 'assets/gif/embaixadinha.gif',
                  title: 'Escolha seu esporte favorito',
                  description:
                      'Bem vindo ao FutRent, encontre seu lugar ideal e faça amizades pelo caminho',
                ),
                OnBoardingPageItem(
                  image: 'assets/gif/tennis.gif',
                  title: 'Jogue quando quiser',
                  description:
                      'Liberte-se das limitações. Agende partidas em qualquer lugar e a qualquer momento. O esporte é para todos!',
                ),
                OnBoardingPageItem(
                  image: 'assets/gif/basketball.gif',
                  title: 'Diga adeus aos problemas de organização!',
                  description:
                      'Não perca tempo, jogue mais! Nosso app de agendamento simplifica a vida dos jogadores. Organize-se em segundos e aproveite mais minutos de bola rolando.',
                ),
              ],
            ),
            const OnBoardingSkip(),
            const OnBoardingDotNavigation(),
            const OnboardingNextButton()
          ],
        ));
  }
}
