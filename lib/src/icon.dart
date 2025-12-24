import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// A material icon component
class Icon extends StatelessComponent {
  /// Constructs an [Icon] using the default material-icons.
  /// <br />
  /// The default material-icons is `filled`
  const Icon(
    this.iconData, {
    this.size,
    this.color,
    this.lineHeight,
    this.styles,
  }) : iconType = 'material-icons',
       assert(
         styles == null ||
             (lineHeight == null && color == null && size == null),
         'If you are providing `styles` '
         'then you have to provide the color, size and lineHeight in the '
         'styles instead of passing them as separate options',
       );

  /// Constructs a `rounded` [Icon]
  const Icon.rounded(
    this.iconData, {
    this.size,
    this.color,
    this.lineHeight,
    this.styles,
  }) : iconType = 'material-icons-round',
       assert(
         styles == null ||
             (lineHeight == null && color == null && size == null),
         'If you are providing `styles` '
         'then you have to provide the color, size and lineHeight in the '
         'styles instead of passing them as separate options',
       );

  /// Constructs a `sharp` [Icon]
  const Icon.sharp(
    this.iconData, {
    this.size,
    this.color,
    this.lineHeight,
    this.styles,
  }) : iconType = 'material-icons-sharp',
       assert(
         styles == null ||
             (lineHeight == null && color == null && size == null),
         'If you are providing `styles` '
         'then you have to provide the color, size and lineHeight in the '
         'styles instead of passing them as separate options',
       );

  /// Constructs an `outlined` [Icon]
  const Icon.outlined(
    this.iconData, {
    this.size,
    this.color,
    this.lineHeight,
    this.styles,
  }) : iconType = 'material-icons-outlined',
       assert(
         styles == null ||
             (lineHeight == null && color == null && size == null),
         'If you are providing `styles` '
         'then you have to provide the color, size and lineHeight in the '
         'styles instead of passing them as separate options',
       );

  /// Constructs a `two-tone` [Icon]
  const Icon.twoTone(
    this.iconData, {
    this.size,
    this.color,
    this.lineHeight,
    this.styles,
  }) : iconType = 'material-icons-two-tone',
       assert(
         styles == null ||
             (lineHeight == null && color == null && size == null),
         'If you are providing `styles` '
         'then you have to provide the color, size and lineHeight in the '
         'styles instead of passing them as separate options',
       );

  /// The style of this material icon.
  ///
  /// Examples: rounded, sharp, two-toned.
  final String iconType;

  /// The icon you wish to display.<br />
  /// Example: Icons.adb
  final String iconData;

  /// The size of this icon.
  final Unit? size;

  /// The line-height of this icon
  final Unit? lineHeight;

  /// The colour of this icon.
  final Color? color;

  /// The `style` attribute of this icon
  final Styles? styles;

  @override
  Component build(_) {
    final defaultStyle = Styles(
      display: Display.inlineFlex,
      fontSize: size,
      lineHeight: lineHeight ?? size,
      color: color,
    );

    return Component.element(
      tag: 'span',
      classes: iconType,
      styles: Styles.combine([defaultStyle, ?styles]),
      children: [RawText(iconData)],
    );
  }
}
