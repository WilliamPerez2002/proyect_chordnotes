import 'package:flutter/material.dart';
import 'package:proyect_chordnotes/ui/themes/color_scheme/color_scheme_light.dart';
import 'package:proyect_chordnotes/ui/themes/theme_data/global_theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: GlobalThemData.lightThemeData,
      darkTheme: GlobalThemData.darkThemeData,
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double pointCount = 8 + (_counter % 6);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(
            widget.title,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          centerTitle: true,

          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: _incrementCounter,
            ),
          ],
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          shadowColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You have pushed the button this many times:',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  'You have pushed the button this many times:',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  'You have pushed the button this many times:',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  'You have pushed the button this many times:',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Text(
                  'You have pushed the button this many times:',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(
                  'You have pushed the button this many times:',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  'You have pushed the button this many times:',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Text(
                  'You have pushed the button this many times:',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  'You have pushed the button this many times:',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  'You have pushed the button this many times:',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                  'You have pushed the button this many times:',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Text(
                  'You have pushed the button this many times:',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Text(
                  'You have pushed the button this many times:',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  'You have pushed the button this many times:',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  'You have pushed the button this many times:',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
