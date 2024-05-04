import 'dart:async';

import 'package:nyxx/nyxx.dart';

import '../context/autocomplete_context.dart';
import '../converters/converter.dart';

class FunctionData {
  final List<ParameterData<dynamic>> parametersData;

  int get requiredParameters => parametersData.takeWhile((value) => !value.isOptional).length;

  final (int, int) lines;

  final String filePath;

  const FunctionData(this.parametersData, this.lines, this.filePath);
}

class ParameterData<T> {
  final String name;

  final Map<Locale, String>? localizedNames;

  final RuntimeType<T> type;

  final bool isOptional;

  final String? description;

  final Map<Locale, String>? localizedDescriptions;

  final dynamic defaultValue;

  final Map<String, dynamic>? choices;

  final List<Map<Locale, String>>? localizedChoices;

  final Converter<dynamic>? converterOverride;

  final FutureOr<Iterable<CommandOptionChoiceBuilder<dynamic>>?> Function(AutocompleteContext)?
      autocompleteOverride;

  const ParameterData({
    required this.name,
    required this.localizedNames,
    required this.type,
    required this.isOptional,
    required this.description,
    required this.localizedDescriptions,
    required this.defaultValue,
    required this.choices,
    required this.localizedChoices,
    required this.converterOverride,
    required this.autocompleteOverride,
  });
}
