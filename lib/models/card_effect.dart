import 'package:json_annotation/json_annotation.dart';

part 'card_effect.g.dart';

enum EffectType {
  damage,
  heal,
  draw,
  increase_virus_odds,
  decrease_virus_odds,
  draw_next_turn,
  copy_self,
  copy_random,
  copy_other_player_random,
  destroy_target_driver,
  destroy_own_drivers,
  destroy_other_players_drivers,
  custom,
}

enum EffectTarget {
  self,
  other,
  both,
  none,
}

@JsonSerializable()
class CardEffect {
  final EffectType effectType;
  final int? value;
  final EffectTarget target;
  final String? customDef; // New field
  final String? notes; // New field

  CardEffect({
    required this.effectType,
    this.value,
    required this.target,
    this.customDef, // New field
    this.notes, // New field
  });

  Map<String, dynamic> toJson() => {
        'effectType': effectType.toString(),
        'value': value,
        'target': target.toString(),
        'customDef': customDef, // New field
        'notes': notes, // New field
      };

  factory CardEffect.fromJson(Map<String, dynamic> json) {
    return CardEffect(
      effectType: EffectType.values.firstWhere(
          (e) => e.toString() == json['effectType'],
          orElse: () => EffectType.damage),
      value: json['value'],
      target: EffectTarget.values.firstWhere(
          (t) => t.toString() == json['target'],
          orElse: () => EffectTarget.none),
      customDef: json['customDef'], // New field
      notes: json['notes'], // New field
    );
  }
}