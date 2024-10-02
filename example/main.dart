import 'package:jaspr/server.dart';
import 'package:jaspr/ui.dart' hide Document;
import 'package:jaspr_material/jaspr_material.dart';

void main() {
  Jaspr.initializeApp();

  runApp(
    Document(
      title: 'Title',
      head: [
        link(
          href: 'https://fonts.googleapis'
              '.com/css?family=Material+Icons|Material+Icons+Outlined'
              '|Material+Icons+Two+Tone|Material+Icons+Round|Material+'
              'Icons+Sharp',
          rel: 'stylesheet',
        ),
      ],
      styles: <StyleRule>[],
      body: DomComponent(
        tag: 'body',
        styles: const Styles.background(color: Color.named('#101118')),
        child: App(),
      ),
    ),
  );
}

@client
class App extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield const Column(
      children: [
        Icon(
          Icons.language,
          styles: Styles.combine(
            [
              Styles.flexbox(alignItems: AlignItems.baseline),
              Styles.text(color: Color.named('#fff')),
            ],
          ),
        ),
        Icon.outlined(Icons.phone, size: Unit.pixels(20), colour: Colors.red),
      ],
    );
  }
}
