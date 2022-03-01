import 'package:flutter/material.dart';

import '../puzzle/widgets/puzzle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Puzzle(),
      TextButton(
        child: const Text('Create a Competition'),
        onPressed: () {},
      )
    ]);
  }
}
