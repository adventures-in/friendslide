import 'package:flutter/material.dart';

import '../../competitions/create_competition_screen.dart';

abstract class PageConfig {
  Page toPage();
}

class CreateCompetitionScreenConfig extends PageConfig {
  @override
  Page toPage() {
    return const MaterialPage<CreateCompetitionScreen>(
      key: ValueKey(CreateCompetitionScreen),
      child: CreateCompetitionScreen(),
    );
  }
}
