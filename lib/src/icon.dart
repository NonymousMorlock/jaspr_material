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
      }) : iconType = 'material-icons';

  /// Constructs a `rounded` [Icon]
  const Icon.rounded(
      this.iconData, {
        this.size,
        this.colour,
      }) : iconType = 'material-icons-round';

  /// Constructs a `sharp` [Icon]
  const Icon.sharp(
      this.iconData, {
        this.size,
        this.colour,
      }) : iconType = 'material-icons-sharp';

  /// Constructs an `outlined` [Icon]
  const Icon.outlined(
      this.iconData, {
        this.size,
        this.colour,
      }) : iconType = 'material-icons-outlined';

  /// Constructs a `two-tone` [Icon]
  const Icon.twoTone(
      this.iconData, {
        this.size,
        this.colour,
      }) : iconType = 'material-icons-two-tone';

  /// The style of this material icon.
  ///
  /// Examples: rounded, sharp, two-toned.
  final String iconType;

  /// The icon you wish to display.<br />
  /// Example: Icons.adb
  final String iconData;

  /// The size of this icon.
  final Unit? size;

  /// The colour of this icon.
  final Color? colour;

  @override
  Element createElement() {
    var iconStyle = ' style="display: inline-flex;';
    if(colour == null && size == null) {
      iconStyle += '"';
    }
    if (size case Unit(:final String value)) {
      iconStyle += 'font-size: $value; line-height: $value;'
          '${colour == null ? '"' : ''}';
    }
    if (colour case Color(:final String value)) {
      iconStyle += ' color: $value;"';
    }
    return TextElement(
      Text(
        '<span class="$iconType"$iconStyle>$iconData</span>',
        rawHtml: true,
      ),
    );
  }
}
