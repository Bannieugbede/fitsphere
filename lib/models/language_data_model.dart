import 'package:flutter/material.dart';
import '../extensions/constants.dart';
import '../extensions/extension_util/string_extensions.dart';
import '../extensions/shared_pref.dart';
import '../utils/app_config.dart';
import '../main.dart';

class LanguageDataModel {
  int? id;
  String? name;
  String? languageCode;
  String? fullLanguageCode;
  String? flag;
  String? subTitle;

  LanguageDataModel({
    this.id,
    this.name,
    this.languageCode,
    this.flag,
    this.fullLanguageCode,
    this.subTitle,
  });

  static List<String> languages() {
    List<String> list = [];

    for (var element in localeLanguageList) {
      list.add(element.languageCode.validate());
    }

    return list;
  }

  static List<Locale> languageLocales() {
    List<Locale> list = [];

    for (var element in localeLanguageList) {
      list.add(Locale(element.languageCode.validate(),
          element.fullLanguageCode.validate()));
    }

    return list;
  }
}

LanguageDataModel? getSelectedLanguageModel({String? defaultLanguage}) {
  LanguageDataModel? data;

  for (var element in localeLanguageList) {
    if (element.languageCode == getStringAsync(SELECTED_LANGUAGE_CODE, defaultValue: defaultLanguage ?? DEFAULT_LANGUAGE)) {
      data = element;
    }
  }

  return data;
}