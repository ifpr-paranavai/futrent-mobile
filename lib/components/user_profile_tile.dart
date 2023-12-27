import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/images/circular_image.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircularImage(
        image: 'assets/images/user2.png',
        height: 50,
        width: 50,
        padding: 0,
      ),
      title: Text(
        'Clóvis de Barros',
        style: Theme.of(context).textTheme.headlineSmall!.apply(color: white),
      ),
      subtitle: Text(
        'contato@clovisdebarros.com.br',
        style: Theme.of(context).textTheme.bodyMedium!.apply(color: white),
      ),
      trailing:
          IconButton(onPressed: onTap, icon: Icon(Iconsax.edit, color: white)),
    );
  }
}
