import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
          // LEARN-SAHIL: We can use our own colors by for e.g,
          // colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(0, 0, 125, 1)),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

// LEARN-SAHIL: `MyAppState` is our state class
class MyAppState extends ChangeNotifier {
  // `WordPair` comes from `package:english_words`.
  var wordPair = WordPair.random();
  // ^^ Name of this variable in codelab is `current`

  void getNext() {
    wordPair = WordPair.random();
    notifyListeners(); // LEARN-SAHIL: Yes, this is exactly what you're thinking of it.
  }

// LEARN-SAHIL: `<WordPair>[]` below is generic and defines `favorites` as *list* of `WordPair`
  var favorites = <WordPair>[];

  void toggleFavorite() {
    if (favorites.contains(wordPair)) {
      favorites.remove(wordPair);
    } else {
      favorites.add(wordPair);
    }
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.wordPair;

    IconData icon;
    if (appState.favorites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Scaffold(
      // (Probably) LEARN-SAHIL: Here `Column` widget is the root parent of all widgets.
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LEARN-SAHIL: We remove below sample text field which we used for to initial demo only.
            // Text('A random awesome idea:'),
            // LEARN-SAHIL: Do not use `appState.wordPair.asLowerCase` directy because
            // widgets should only take (depend on) parameters what they really need.
            BigCard(pair: pair),
            // This is like an empty div and we provide a height to it
            // Learn: number value given to fields e.g, to height field are device independent
            // values so the UI would look same whatever resolution (or probably pixel density) your device has.
            SizedBox(height: 10),
            // LEARN-SAHIL: `Row` widget takes all the horizontal space
            Row(
              // LEARN-SAHIL: By default the `Row` widget takes full width because
              // default value is `MainAxisSize.min`.
              // So, by setting `MainAxisSize.min` the `Row` widget will take
              // minimum width as it much its children needs.
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      appState.toggleFavorite();
                    },
                    icon: Icon(icon),
                    label: Text('Like')),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    print('button pressed!');
                    appState.getNext();
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // LEARN-SAHIL: Here `displayMedium` is a standard font size name and `color` is the text color
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    // LEARN-SAHIL: `Card` is a builtin widget that comes with `Material Design Flutter`
    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(50),
        child: Text(
          pair.asLowerCase,
          style: style,
          // Useful for screen reader and accessiblity
          // Useful link found in codelab - https://docs.flutter.dev/ui/accessibility-and-internationalization/accessibility
          semanticsLabel: pair.asPascalCase,
        ),
      ),
    );
  }
}
