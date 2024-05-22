import 'package:cv_project_team/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TurathEmailLink extends StatelessWidget {
  const TurathEmailLink({super.key});

  void launchEmail() async {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'torath831@gmail.com',
      query: encodeQueryParameters(<String, String>{
        'subject': 'Example Subject & Symbols are allowed!',
      }),
    );

    launchUrl(emailLaunchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: launchEmail,
        child: Text(
          "torath831@gmail.com",
          style: Styless.textStyle24.copyWith(
            color: Colors.blue,
            decoration: TextDecoration.underline,
            fontFamily: 'Rakkas',
          ),
        ),
      ),
    );
  }
}
