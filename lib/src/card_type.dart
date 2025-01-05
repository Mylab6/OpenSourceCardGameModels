// lib/models/card_types.dart

import 'card_effect.dart';

enum CardType {
  apiCall, // Spells
  virus, // Spells that can back fire
  sysAgent, // Counter Spells
  driver, // Enchantments that stay on the board
  bot, // Creatures, not used in this game
  // but I want to allow others using the desinger to user it
}

extension CardTypeExtension on CardType {
  String get displayName => toString().split('.').last;

  bool get requiresFailureChance => this == CardType.virus;
  bool get requiresDamage => this == CardType.apiCall || this == CardType.virus;
  bool get requiresCounterTypes => this == CardType.sysAgent;
  bool get requiresGameModifiers => this == CardType.driver;
}

extension EffectTypeExtension on EffectType {
  String get displayName => toString().split('.').last;
}
