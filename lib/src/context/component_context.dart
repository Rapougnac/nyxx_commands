//  Copyright 2021 Abitofevrything and others.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

import 'package:nyxx_interactions/nyxx_interactions.dart';

import '../util/mixins.dart';
import 'base.dart';

/// Data about a context in which a component was interacted with.
///
/// You might also be interested in:
/// - [IComponentContext], which exposes the functionality for interacting with this context.
abstract class IComponentContextData implements IInteractionContextData {
  @override
  IComponentInteractionEvent get interactionEvent;

  @override
  IComponentInteraction get interaction;

  /// The ID of the component that was interacted with.
  String get componentId;
}

/// A context in which a component was interacted with.
///
/// Contains data about which component was interacted with and exposes functionality to respond to
/// that interaction.
///
/// You might also be interested in:
/// - [IComponentContextData], which exposes the data found in this context.
abstract class IComponentContext implements IComponentContextData, IInteractionInteractiveContext {}

/// A context in which a button component was interacted with.
///
/// You might also be interested in:
/// - [IComponentContext], the base class for all component contexts.
class ButtonComponentContext extends ContextBase
    with InteractionRespondMixin, InteractiveMixin
    implements IComponentContext {
  @override
  final IButtonInteraction interaction;

  @override
  final IButtonInteractionEvent interactionEvent;

  @override
  String get componentId => interaction.customId;

  /// Create a new [ButtonComponentContext].
  ButtonComponentContext({
    required super.user,
    required super.member,
    required super.guild,
    required super.channel,
    required super.commands,
    required super.client,
    required this.interaction,
    required this.interactionEvent,
  });
}

/// A context in which a multi-select component was interacted with.
///
/// You might also be interested in:
/// - [IComponentContext], the base class for all component contexts.
class MultiselectComponentContext<T> extends ContextBase
    with InteractionRespondMixin, InteractiveMixin
    implements IComponentContext {
  @override
  final IMultiselectInteraction interaction;

  @override
  final IMultiselectInteractionEvent interactionEvent;

  @override
  String get componentId => interaction.customId;

  /// The item selected by the user.
  ///
  /// Will be a [List] if multiple items were selected.
  final T selected;

  /// Create a new [MultiselectComponentContext].
  MultiselectComponentContext({
    required super.user,
    required super.member,
    required super.guild,
    required super.channel,
    required super.commands,
    required super.client,
    required this.interaction,
    required this.interactionEvent,
    required this.selected,
  });
}
