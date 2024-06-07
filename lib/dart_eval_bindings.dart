import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:nyxx_commands/src/context/chat_context.dart';
import 'package:dart_eval/stdlib/core.dart';

/// dart_eval wrapper binding for [ChatContext]
class $ChatContext implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type declaration of [$ChatContext]
  static const $type = BridgeTypeRef(
    BridgeTypeSpec(
      'package:nyxx_commands/src/context/chat_context.dart',
      'ChatContext',
    ),
  );

  /// Compile-time class declaration of [$ChatContext]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      isAbstract: true,
      $implements: [
        BridgeTypeRef(BridgeTypeSpec(
            'package:nyxx_commands/src/context/chat_context.dart',
            'ChatContextData')),
        BridgeTypeRef(BridgeTypeSpec(
            'package:nyxx_commands/src/context/base.dart', 'CommandContext'))
      ],
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [],
        ),
        isFactory: false,
      ),
    },
    methods: {},
    getters: {
      'arguments': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.list)),
          namedParams: [],
          params: [],
        ),
      ),
    },
    setters: {
      'arguments=': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'value',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.list)),
              true,
            ),
          ],
        ),
      ),
    },
    fields: {},
    wrap: true,
  );

  final $Instance _superclass;

  @override
  final ChatContext $value;

  @override
  ChatContext get $reified => $value;

  /// Wrap a [ChatContext] in a [$ChatContext]
  $ChatContext.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'arguments':
        final _arguments = $value.arguments;
        return $List.view(_arguments, (e) => $Object(e));
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      case 'arguments':
        $value.arguments = value.$value;
        return;
    }
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [ChatContextBase]
class $ChatContextBase implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type declaration of [$ChatContextBase]
  static const $type = BridgeTypeRef(
    BridgeTypeSpec(
      'package:nyxx_commands/src/context/chat_context.dart',
      'ChatContextBase',
    ),
  );

  /// Compile-time class declaration of [$ChatContextBase]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      isAbstract: true,
      $extends: BridgeTypeRef(BridgeTypeSpec(
          'package:nyxx_commands/src/context/base.dart', 'ContextBase')),
      $implements: [
        BridgeTypeRef(BridgeTypeSpec(
            'package:nyxx_commands/src/context/chat_context.dart',
            'ChatContext'))
      ],
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'command',
              BridgeTypeAnnotation(BridgeTypeRef(BridgeTypeSpec(
                  'package:nyxx_commands/src/commands/chat_command.dart',
                  'ChatCommand'))),
              true,
            ),
            BridgeParameter(
              'user',
              BridgeTypeAnnotation(BridgeTypeRef(BridgeTypeSpec(
                  'package:nyxx/src/models/user/user.dart', 'User'))),
              true,
            ),
            BridgeParameter(
              'member',
              BridgeTypeAnnotation(BridgeTypeRef(BridgeTypeSpec(
                  'package:nyxx/src/models/guild/member.dart', 'Member'))),
              true,
            ),
            BridgeParameter(
              'guild',
              BridgeTypeAnnotation(BridgeTypeRef(BridgeTypeSpec(
                  'package:nyxx/src/models/guild/guild.dart', 'Guild'))),
              true,
            ),
            BridgeParameter(
              'channel',
              BridgeTypeAnnotation(BridgeTypeRef(BridgeTypeSpec(
                  'package:nyxx/src/models/channel/text_channel.dart',
                  'TextChannel'))),
              true,
            ),
            BridgeParameter(
              'commands',
              BridgeTypeAnnotation(BridgeTypeRef(BridgeTypeSpec(
                  'package:nyxx_commands/src/commands.dart',
                  'CommandsPlugin'))),
              true,
            ),
            BridgeParameter(
              'client',
              BridgeTypeAnnotation(BridgeTypeRef(BridgeTypeSpec(
                  'package:nyxx/src/client.dart', 'NyxxGateway'))),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {
      'arguments': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.list)),
        isStatic: false,
      ),
      'command': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(BridgeTypeSpec(
            'package:nyxx_commands/src/commands/chat_command.dart',
            'ChatCommand'))),
        isStatic: false,
      ),
    },
    wrap: true,
  );

  final $Instance _superclass;

  @override
  final ChatContextBase $value;

  @override
  ChatContextBase get $reified => $value;

  /// Wrap a [ChatContextBase] in a [$ChatContextBase]
  $ChatContextBase.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'arguments':
        final _arguments = $value.arguments;
        return $List.view(_arguments, (e) => $Object(e));

      case 'command':
        final _command = $value.command;
        return runtime.wrapAlways(_command);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    switch (identifier) {
      case 'arguments':
        $value.arguments = value.$value;
        return;
    }
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [MessageChatContext]
class $MessageChatContext implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
        'package:nyxx_commands/src/context/chat_context.dart',
        'MessageChatContext.',
        $MessageChatContext.$new);
  }

  /// Compile-time type declaration of [$MessageChatContext]
  static const $type = BridgeTypeRef(
    BridgeTypeSpec(
      'package:nyxx_commands/src/context/chat_context.dart',
      'MessageChatContext',
    ),
  );

  /// Compile-time class declaration of [$MessageChatContext]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,
      isAbstract: false,
      $extends: BridgeTypeRef(BridgeTypeSpec(
          'package:nyxx_commands/src/context/chat_context.dart',
          'ChatContextBase')),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'message',
              BridgeTypeAnnotation(BridgeTypeRef(BridgeTypeSpec(
                  'package:nyxx/src/models/message/message.dart', 'Message'))),
              true,
            ),
            BridgeParameter(
              'prefix',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
              true,
            ),
            BridgeParameter(
              'rawArguments',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
              true,
            ),
            BridgeParameter(
              'command',
              BridgeTypeAnnotation(BridgeTypeRef(BridgeTypeSpec(
                  'package:nyxx_commands/src/commands/chat_command.dart',
                  'ChatCommand'))),
              true,
            ),
            BridgeParameter(
              'user',
              BridgeTypeAnnotation(BridgeTypeRef(BridgeTypeSpec(
                  'package:nyxx/src/models/user/user.dart', 'User'))),
              true,
            ),
            BridgeParameter(
              'member',
              BridgeTypeAnnotation(BridgeTypeRef(BridgeTypeSpec(
                  'package:nyxx/src/models/guild/member.dart', 'Member'))),
              true,
            ),
            BridgeParameter(
              'guild',
              BridgeTypeAnnotation(BridgeTypeRef(BridgeTypeSpec(
                  'package:nyxx/src/models/guild/guild.dart', 'Guild'))),
              true,
            ),
            BridgeParameter(
              'channel',
              BridgeTypeAnnotation(BridgeTypeRef(BridgeTypeSpec(
                  'package:nyxx/src/models/channel/text_channel.dart',
                  'TextChannel'))),
              true,
            ),
            BridgeParameter(
              'commands',
              BridgeTypeAnnotation(BridgeTypeRef(BridgeTypeSpec(
                  'package:nyxx_commands/src/commands.dart',
                  'CommandsPlugin'))),
              true,
            ),
            BridgeParameter(
              'client',
              BridgeTypeAnnotation(BridgeTypeRef(BridgeTypeSpec(
                  'package:nyxx/src/client.dart', 'NyxxGateway'))),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },
    methods: {},
    getters: {},
    setters: {},
    fields: {
      'message': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(BridgeTypeSpec(
            'package:nyxx/src/models/message/message.dart', 'Message'))),
        isStatic: false,
      ),
      'prefix': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
        isStatic: false,
      ),
      'rawArguments': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string)),
        isStatic: false,
      ),
    },
    wrap: true,
  );

  /// Wrapper for the [MessageChatContext.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $MessageChatContext.wrap(
      MessageChatContext(
          message: args[0]!.$value,
          prefix: args[1]!.$value,
          rawArguments: args[2]!.$value,
          command: args[3]!.$value,
          user: args[4]!.$value,
          member: args[5]!.$value,
          guild: args[6]!.$value,
          channel: args[7]!.$value,
          commands: args[8]!.$value,
          client: args[9]!.$value),
    );
  }

  final $Instance _superclass;

  @override
  final MessageChatContext $value;

  @override
  MessageChatContext get $reified => $value;

  /// Wrap a [MessageChatContext] in a [$MessageChatContext]
  $MessageChatContext.wrap(this.$value)
      : _superclass = $ChatContextBase.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($type.spec!);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'message':
        final _message = $value.message;
        return runtime.wrapAlways(_message);

      case 'prefix':
        final _prefix = $value.prefix;
        return $String(_prefix);

      case 'rawArguments':
        final _rawArguments = $value.rawArguments;
        return $String(_rawArguments);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
