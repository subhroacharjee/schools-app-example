import 'package:core_flutter/presentation/screens/settings_screen/sections/contact_details_section.dart';
import 'package:core_flutter/presentation/screens/settings_screen/sections/name_section.dart';
import 'package:core_flutter/presentation/screens/settings_screen/sections/password_section.dart';
import 'package:core_flutter/presentation/screens/settings_screen/sections/time_zone_section.dart';
import 'package:core_flutter/presentation/screens/settings_screen/settings_page.dart';
import 'package:core_flutter/presentation/screens/settings_screen/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:schools_app/src/presentation/widgets/settings_app_bar.dart';

class SchoolsSettingsScreen extends StatelessWidget {
  const SchoolsSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SettingsAppBar(title: 'Settings'),
          Expanded(
            child: SettingsScreen(
              showSidebar: false,
              showPageTitle: false,
              pages: [
                const SettingsPage(
                  title: 'User',
                  sections: [
                    NameSection(title: 'Update your name'),
                    ContactDetailsSection(
                      title: 'Update your email',
                      includePhone: false,
                    ),
                    PasswordSection(),
                    TimeZoneSection(),
                  ],
                  icon: Icons.settings,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
