import 'package:flutter/material.dart';
import 'package:futrent_mobile/shared/components/app%20bar/primary_app_bar.dart';
import 'package:futrent_mobile/shared/components/common/profile_menu.dart';
import 'package:futrent_mobile/shared/components/common/section_heading.dart';
import 'package:futrent_mobile/shared/components/images/circular_image.dart';
import 'package:futrent_mobile/shared/utils/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarPrimary(
        title: Text('Perfil'),
        showBackArrow: true,
      ),

      /// --BODY--
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              /// -- PICTURE PROFILE--
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImage(
                        image: 'assets/images/user2.png',
                        width: 80,
                        height: 80),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Alterar foto de perfil'))
                  ],
                ),
              ),

              /// -- DETAILS --
              const SizedBox(height: Sizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: Sizes.spaceBtwItems),

              /// -- HEADING PROFILE INFO --
              const SectionHeading(
                  title: 'Informações do Perfil', showActionButton: false),
              const SizedBox(height: Sizes.spaceBtwItems),

              ProfileMenu(
                title: 'Nome ',
                value: 'Clóvis de Barros',
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'Usuário ',
                value: 'clovin157',
                onPressed: () {},
              ),

              const SizedBox(height: Sizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: Sizes.spaceBtwItems),

              /// -- HEADING PERSONAL INFO --
              const SectionHeading(
                  title: 'Informações Pessoais', showActionButton: false),
              const SizedBox(height: Sizes.spaceBtwItems),

              ProfileMenu(
                title: 'Código ',
                value: '1',
                onPressed: () {},
                icon: Iconsax.copy,
              ),
              ProfileMenu(
                  title: 'E-mail ',
                  value: 'contato@clovisdebarros.com.br',
                  onPressed: () {}),
              ProfileMenu(
                  title: 'Usuário ',
                  value: '+55 11 99999-9999',
                  onPressed: () {}),
              ProfileMenu(
                  title: 'Gênero ', value: 'Masculino', onPressed: () {}),
              ProfileMenu(
                  title: 'Data de nascimento ',
                  value: '01/01/1903',
                  onPressed: () {}),
              const Divider(),
              const SizedBox(height: Sizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Excluir conta',
                      style: TextStyle(color: Colors.red)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
