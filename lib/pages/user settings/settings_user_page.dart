import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/containers/primary_header_container.dart';
import 'package:futrent_mobile/pages/games%20historic/games_historic.dart';
import 'package:futrent_mobile/components/app%20bar/primary_app_bar.dart';
import 'package:futrent_mobile/components/common/section_heading.dart';
import 'package:futrent_mobile/components/tile/settings_menu_tile.dart';
import 'package:futrent_mobile/components/tile/user_profile_tile.dart';
import 'package:futrent_mobile/pages/profile/profile_page.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/utils/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsUserPage extends StatelessWidget {
  const SettingsUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// --HEADER--
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  /// --APPBAR--
                  AppBarPrimary(
                      title: Text(
                    'Conta',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: white),
                  )),

                  ///-- User Profile Card
                  UserProfileTile(
                    onTap: () => Get.to(() => const ProfilePage()),
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwSections,
                  )
                ],
              ),
            ),

            /// --BODY--
            Padding(
              padding: const EdgeInsets.all(Sizes.defaultSpace),
              child: Column(
                children: [
                  const SectionHeading(
                    title: 'Configurações da Conta',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwItems,
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'Endereço',
                    subtitle: 'Endereço pessoal',
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.mobile,
                    title: 'Telefone',
                    subtitle: 'Telefone para contato',
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'Minhas Partidas',
                    subtitle: 'Partidas que já joguei',
                    onTap: () => Get.to(() => const GamesHistoric()),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notificações',
                    subtitle: 'Fique atento aos seus convites',
                    onTap: () {},
                  ),

                  ///--App Settings
                  const SizedBox(height: Sizes.spaceBtwSections),
                  const SectionHeading(
                    title: 'Configurações do App',
                    showActionButton: false,
                  ),
                  const SizedBox(height: Sizes.spaceBtwItems),
                  const SettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Carregar Dados',
                    subtitle: 'Subir os dados para seu Cloud Firebase',
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocalização',
                    subtitle:
                        'Personalizar sua localização para encontrar jogos',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),

                  ///--Logout Button
                  const SizedBox(height: Sizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Sair da Conta'),
                    ),
                  ),

                  const SizedBox(height: Sizes.spaceBtwSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
