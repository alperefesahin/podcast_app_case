import 'package:crop_experience_agency_case/infrastructure/api/api.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/constants/colors.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/notification_icon.dart';
import 'package:crop_experience_agency_case/presentation/pages/home/widgets/search_bar.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final getRequest = Api().getCharacterInformations(id: 1);

    return Scaffold(
      backgroundColor: pageBackgroundColor,
      body: FutureBuilder(
          future: getRequest,
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return Column(
                  children: [
                    Row(
                      children: const [
                        Expanded(child: SearchBar()),
                        NotificationIcon()
                      ],
                    ),
                  ],
                );
              }
            }
            return const Center(child: CircularProgressIndicator());
          }),
    );
  }
}
