import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';
import 'package:jaspr_material/jaspr_material.dart';

void main() {
  Jaspr.initializeApp();

  runApp(
    Document(
      title: 'Title',
      head: const [
        link(
          href: 'https://fonts.googleapis'
              '.com/css?family=Material+Icons|Material+Icons+Outlined'
              '|Material+Icons+Two+Tone|Material+Icons+Round|Material+'
              'Icons+Sharp',
          rel: 'stylesheet',
        ),
      ],
      styles: <StyleRule>[],
      body: Component.element(
        tag: 'body',
        styles: const Styles(backgroundColor: Color('#101118')),
        children: [App()],
      ),
    ),
  );
}

@client
class App extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return const div(
      [
        Icon(
          Icons.language,
          styles: Styles(
            color: Color('#fff'),
            alignItems: AlignItems.baseline,
          ),
        ),
        Icon.outlined(Icons.phone, size: Unit.pixels(20), color: Colors.red),
      ],
      classes: 'flex flex-col items-center justify-center h-screen'
    );
  }
}
