import 'package:nyxx/nyxx.dart';
import 'package:nyxx_interactions/nyxx_interactions.dart';

import '../../context/base.dart';
import '../../util/view.dart';
import '../converter.dart';

bool? convertBool(StringView view, IContextData context) {
  String word = view.getQuotedWord();

  const Iterable<String> truthy = ['y', 'yes', '+', '1', 'true'];
  const Iterable<String> falsy = ['n', 'no', '-', '0', 'false'];

  const Iterable<String> valid = [...truthy, ...falsy];

  if (valid.contains(word.toLowerCase())) {
    return truthy.contains(word.toLowerCase());
  }

  return null;
}

MultiselectOptionBuilder boolToMultiselectOption(bool value) => MultiselectOptionBuilder(
      value ? 'True' : 'False',
      value.toString(),
    );

ButtonBuilder boolToButton(bool value) => ButtonBuilder(
      value ? 'True' : 'False',
      '',
      ButtonStyle.primary,
    );

/// A [Converter] that converts input to a [bool].
///
/// This converter will parse the input to `true` if the next word or quoted section of the input is
/// one of `y`, `yes`, `+`, `1` or `true`. This comparison is case-insensitive.
/// This converter will parse the input to `false` if the next work or quoted section of the input
/// is one of `n`, `no`, `-`, `0` or `false`. This comparison is case-insensitive.
///
/// If the input is not one of the aforementioned words, this converter will fail.
///
/// This converter has a Discord Slash Command Argument Type of [CommandOptionType.boolean].
const Converter<bool> boolConverter = Converter<bool>(
  convertBool,
  type: CommandOptionType.boolean,
  toMultiselectOption: boolToMultiselectOption,
  toButton: boolToButton,
);
