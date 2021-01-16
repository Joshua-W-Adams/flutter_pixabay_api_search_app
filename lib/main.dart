import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Pixabay API Search App',
      debugShowCheckedModeBanner: false,

      /// Basic visual layout structure for single page iOS app.
      home: CupertinoPageScaffold(
        child: SafeArea(
          child: Container(),
        ),
      ),
    );
  }
}
