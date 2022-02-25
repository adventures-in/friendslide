import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:redux/redux.dart';

import 'app/app_state.dart';
import 'firebase_options.dart';
import 'puzzle/reducers/move_puzzle_piece_reducer.dart';
import 'puzzle/widgets/puzzle.dart';
import 'utils/reducers_list_extension.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AuthGate(),
    );
  }
}

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // User is not signed in
        if (!snapshot.hasData) {
          return const SignInScreen(providerConfigs: [
            EmailProviderConfiguration(),
          ]);
        }

        // Render your application if authenticated
        return Scaffold(
          body: StoreProvider(
            store: Store<AppState>(
                <Reducer<AppState>>[MovePuzzlePieceReducer()].combine(),
                initialState: AppState.init()),
            child: const Puzzle(),
          ),
        );
      },
    );
  }
}
