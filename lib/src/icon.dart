import 'package:jaspr/jaspr.dart';

/// A material icon component
class Icon extends Component {
  /// Constructs an [Icon] using the default material-icons.
  /// <br />
  /// The default material-icons is `filled`
  const Icon(
    this.iconData, {
    this.size,
    this.colour,
    this.lineHeight,
    this.styles,
  })  : iconType = 'material-icons',
        assert(
          styles == null ||
              (lineHeight == null && colour == null && size == null),
          'If you are providing `styles` '
          'then you have to provide the colour, size and lineHeight in the '
          'styles instead of passing them as separate options',
        );

  /// Constructs a `rounded` [Icon]
  const Icon.rounded(
    this.iconData, {
    this.size,
    this.colour,
    this.lineHeight,
    this.styles,
  })  : iconType = 'material-icons-round',
        assert(
          styles == null ||
              (lineHeight == null && colour == null && size == null),
          'If you are providing `styles` '
          'then you have to provide the colour, size and lineHeight in the '
          'styles instead of passing them as separate options',
        );

  /// Constructs a `sharp` [Icon]
  const Icon.sharp(
    this.iconData, {
    this.size,
    this.colour,
    this.lineHeight,
    this.styles,
  })  : iconType = 'material-icons-sharp',
        assert(
          styles == null ||
              (lineHeight == null && colour == null && size == null),
          'If you are providing `styles` '
          'then you have to provide the colour, size and lineHeight in the '
          'styles instead of passing them as separate options',
        );

  /// Constructs an `outlined` [Icon]
  const Icon.outlined(
    this.iconData, {
    this.size,
    this.colour,
    this.lineHeight,
    this.styles,
  })  : iconType = 'material-icons-outlined',
        assert(
          styles == null ||
              (lineHeight == null && colour == null && size == null),
          'If you are providing `styles` '
          'then you have to provide the colour, size and lineHeight in the '
          'styles instead of passing them as separate options',
        );

  /// Constructs a `two-tone` [Icon]
  const Icon.twoTone(
    this.iconData, {
    this.size,
    this.colour,
    this.lineHeight,
    this.styles,
  })  : iconType = 'material-icons-two-tone',
        assert(
          styles == null ||
              (lineHeight == null && colour == null && size == null),
          'If you are providing `styles` '
          'then you have to provide the colour, size and lineHeight in the '
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
  final Color? colour;

  /// The `style` attribute of this icon
  final Styles? styles;

  @override
  Element createElement() {
    var iconStyle = styles != null ? '' : ' style="display: inline-flex;';
    if (colour == null && size == null && lineHeight == null) {
      iconStyle += '"';
    }
    if (size case Unit(:final String value)) {
      iconStyle += ' font-size: $value;';
      if (lineHeight == null) {
        iconStyle += ' line-height: $value;';
      }
      iconStyle += colour == null ? '"' : '';
    }
    if (lineHeight case Unit(:final String value)) {
      iconStyle += ' line-height: $value;'
          '${colour == null ? '"' : ''}';
    }
    if (colour case Color(:final String value)) {
      iconStyle += ' color: $value;"';
    }
    if (styles != null) {
      return DomElement(
        DomComponent(
          tag: 'span',
          classes: iconType,
          styles: styles,
          child: text(iconData, rawHtml: true),
        ),
      );
    }
    return TextElement(
      Text(
        '<span class="$iconType"'
        '$iconStyle>$iconData</span>',
        rawHtml: true,
      ),
    );
  }
}
