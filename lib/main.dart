import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:retrofit_api_test/stores/character_store.dart';
import 'package:retrofit_api_test/views/characters_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<CharacterStore>(
          create: (_) => CharacterStore(),
        ),
      ],
      child: MaterialApp(
        home: CharactersPage(),
      ),
    );
  }
}
