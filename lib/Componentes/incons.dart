import 'package:flutter/material.dart';

abstract final class CupertinoIcons {
  late final String icono;

  /// The icon font used for Cupertino icons.
  static const String iconFont = 'CupertinoIcons';

  /// The dependent package providing the Cupertino icons font.
  static const String iconFontPackage = 'cupertino_icons';

  static const IconData tickets =
      IconData(0xf918, fontFamily: iconFont, fontPackage: iconFontPackage);

  /// <i class='cupertino-icons md-36'>location</i> &#x2014; Cupertino icon for a location pin.
  static const IconData location =
      IconData(0xf6ee, fontFamily: iconFont, fontPackage: iconFontPackage);

  static const IconData info =
      IconData(0xf44c, fontFamily: iconFont, fontPackage: iconFontPackage);

  static const IconData chevron_left =
      IconData(0xe15e, fontFamily: 'MaterialIcons', matchTextDirection: true);
}
