# Jaspr Material

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)
[![License: MIT][license_badge]][license_link]

The material library for Jaspr

## Installation 💻

**❗ In order to start using Jaspr Material you must have the [Dart SDK][dart_install_link] installed on your machine.**

Install via `dart pub add`:

```sh
dart pub add jaspr_material
```

---

## Icon

The `Icon` class is a jaspr `Component` that creates a material icon.

### Properties

- size - The size of the icon
- colour - The colour of this icon
- iconData - The icon you are trying to display
- iconType - The type of icon you are trying to display. You can use the named constructors 
  instead as well. Check [Variations](#variations) for more info.
- lineHeight - The line height of the icon
- styles - The styles of the icon

The `iconData` property can be either the `name` of the icon or a member  of the `Icons` class. Visit [Google Fonts](https://material.io/resources/icons) and select any icon of your choice, this should show you it's `name`, it's now up to you to either type in it's name as the `iconData` or use `Icons.iconName` to find your icon.

See [Icons](#icons) section for more info.

### Variations

The `Icon()` constructor gives you a `filled` material icon which is the default material icon style. This library exposes other styles of material-icons which include:

- Icon.rounded
- Icon.sharp
- Icon.outlined
- Icon.twoToned

You can either use these constructors or still use the default `Icon()` constructor and set the
`iconType` property to any type you want in the form of a `String`.

## Icons

Identifiers for the supported [Material Icons](https://material.io/resources/icons).

You can use them as `Icons.adb`. Simply find the icon you want to use from either [Material Icons](https://material.io/resources/icons) or [Google Fonts](https://material.io/resources/icons) and try to access it using `Icons.iconName`.

NB: If the icon name starts with a **NUMBER**, use the dollar sign($) before typing the icon name. 

Example: If the icon name is `10k`, you can access it using `Icons.$10k`. This is because dart doesn't allow numbers to start variable names.

Some other icons might end with the dollar sign($) because their full name is a reserved keyword in dart, like the `try` icon will be `try$`.


## Styles

The `styles` property of the `Icon` class is a jaspr `Styles` class that allows you to pass custom
css styles to the icon. 

NB: When the Styles property is set, it overrides the other styling properties of the icon.
These properties include `size`, `colour`, and `lineHeight.

[dart_install_link]: https://dart.dev/get-dart
[github_actions_link]: https://docs.github.com/en/actions/learn-github-actions
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[logo_black]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_black.png#gh-light-mode-only
[logo_white]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_white.png#gh-dark-mode-only
[mason_link]: https://github.com/felangel/mason
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_coverage_link]: https://github.com/marketplace/actions/very-good-coverage
[very_good_ventures_link]: https://verygood.ventures
[very_good_ventures_link_light]: https://verygood.ventures#gh-light-mode-only
[very_good_ventures_link_dark]: https://verygood.ventures#gh-dark-mode-only
[very_good_workflows_link]: https://github.com/VeryGoodOpenSource/very_good_workflows
