// lib/models/card_types.dart

import 'card_effect.dart';

enum CardType {
  apiCall, // Spells
  virus, // Spells that can back fire
  sysAgent, // Counter Spells
  driver, // Enchantments that stay on the board
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
