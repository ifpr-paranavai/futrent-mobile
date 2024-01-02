import 'package:flutter/material.dart';
import 'package:futrent_mobile/components/common/divider_social_media.dart';
import 'package:futrent_mobile/components/icons/social_media_icons.dart';
import 'package:futrent_mobile/modules/login/signup_form.dart';
import 'package:futrent_mobile/styles/colors.dart';
import 'package:futrent_mobile/utils/device_utility.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final dark = DeviceUtility.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Registre-se agora mesmo',
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: 24),

              ///sign up form
              const SignUpForm(),

              DividerSocialMedia(
                color: dark ? white : darkGreen,
                valuePadding: 0.0,
                height: 30.0,
              ),
              SocialMediaIcons(
                  valuePadding: 0.0,
                  circleBorderColor: dark ? white : darkGreen),
            ],
          ),
        ),
      ),
    );
  }
}
