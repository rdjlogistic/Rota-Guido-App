import 'package:i18n_extension/i18n_extension.dart';

import 'language/en_US.dart';
import 'language/it-IT.dart';

extension Localization on String {

  static var _t = Translations.byLocale("en_US") + {"en_US": en_US, "it_IT": it_IT};

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String?, String> allVersions() => localizeAllVersions(this, _t);
}