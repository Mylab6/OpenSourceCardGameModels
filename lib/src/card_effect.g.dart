// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_effect.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardEffect _$CardEffectFromJson(Map<String, dynamic> json) => CardEffect(
      effectType: $enumDecode(_$EffectTypeEnumMap, json['effectType']),
      value: (json['value'] as num?)?.toInt(),
      target: $enumDecode(_$EffectTargetEnumMap, json['target']),
      customDef: json['customDef'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$CardEffectToJson(CardEffect instance) =>
    <String, dynamic>{
      'effectType': _$EffectTypeEnumMap[instance.effectType]!,
      'value': instance.value,
      'target': _$EffectTargetEnumMap[instance.target]!,
      'customDef': instance.customDef,
      'notes': instance.notes,
    };

const _$EffectTypeEnumMap = {
  EffectType.damage: 'damage',
  EffectType.heal: 'heal',
  EffectType.draw: 'draw',
  EffectType.increase_virus_odds: 'increase_virus_odds',
  EffectType.decrease_virus_odds: 'decrease_virus_odds',
  EffectType.draw_next_turn: 'draw_next_turn',
  EffectType.copy_self: 'copy_self',
  EffectType.copy_random: 'copy_random',
  EffectType.copy_other_player_random: 'copy_other_player_random',
  EffectType.destroy_target_driver: 'destroy_target_driver',
  EffectType.destroy_own_drivers: 'destroy_own_drivers',
  EffectType.destroy_other_players_drivers: 'destroy_other_players_drivers',
  EffectType.custom: 'custom',
};

const _$EffectTargetEnumMap = {
  EffectTarget.self: 'self',
  EffectTarget.other: 'other',
  EffectTarget.both: 'both',
  EffectTarget.none: 'none',
};
