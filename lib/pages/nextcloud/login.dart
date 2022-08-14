
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:saber/components/nextcloud/login_group.dart';
import 'package:saber/components/settings/privacy_policy.dart';
import 'package:url_launcher/url_launcher.dart';

class NcLoginPage extends StatefulWidget {
  const NcLoginPage({Key? key}) : super(key: key);

  static final Uri signupUrl = Uri.parse("https://nc.saber.adil.hanney.org/index.php/apps/registration/");

  @override
  State<NcLoginPage> createState() => _NcLoginPageState();
}

class _NcLoginPageState extends State<NcLoginPage> {
  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight,
        title: const Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              children: [
                const SizedBox(height: 16),
                const Image(image: AssetImage("assets/icon/icon.png"), width: 200, height: 200),
                const SizedBox(height: 64),
                const LoginInputGroup(),

                const SizedBox(height: 64),

                RichText(
                  text: TextSpan(
                    style: TextStyle(color: colorScheme.onBackground),
                    children: [
                      const TextSpan(text: "Don't have an account yet? "),
                      TextSpan(
                        text: "Sign up now",
                        style: TextStyle(color: colorScheme.primary),
                        recognizer: TapGestureRecognizer()..onTap = () {
                          launchUrl(
                            NcLoginPage.signupUrl,
                            mode: LaunchMode.externalApplication,
                          );
                        },
                      ),
                      const TextSpan(text: "!"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}